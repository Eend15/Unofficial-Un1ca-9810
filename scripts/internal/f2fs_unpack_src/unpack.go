package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"
)

func parseSELinux(data []byte) string {
	if len(data) < 28 {
		return ""
	}
	if binary.LittleEndian.Uint32(data[0:4]) != 0xF2F52011 {
		return ""
	}
	offset := 24
	for offset+4 <= len(data) {
		nameIndex := data[offset]
		nameLen := int(data[offset+1])
		valSize := int(binary.LittleEndian.Uint16(data[offset+2 : offset+4]))
		if nameIndex == 0 {
			break
		}
		entrySize := (4 + nameLen + valSize + 3) &^ 3
		if offset+4+nameLen+valSize > len(data) {
			break
		}
		name := string(data[offset+4 : offset+4+nameLen])
		if name == "selinux" {
			val := data[offset+4+nameLen : offset+4+nameLen+valSize]
			return strings.TrimRight(string(val), "\x00")
		}
		offset += entrySize
	}
	return ""
}

func (r *F2FSReader) getSELinux(in *Inode) string {
	if in.IInline&F2FSInlineXAttr != 0 {
		slots := int(in.inlineXAttrSize)
		if slots == 0 {
			slots = 50
		}
		start := 4052 - slots*4
		if start >= 0 && start < len(in.raw) {
			if ctx := parseSELinux(in.raw[start:4052]); ctx != "" {
				return ctx
			}
		}
	}
	if in.IXAttrNID != 0 {
		if nodeData, err := r.readNode(in.IXAttrNID); err == nil {
			if ctx := parseSELinux(nodeData); ctx != "" {
				return ctx
			}
		}
	}
	return ""
}

func parseSymlinkTarget(data []byte) string {
	if idx := bytes.IndexByte(data, 0); idx >= 0 {
		data = data[:idx]
	}
	return strings.TrimSpace(string(data))
}

func escapeFileContextPath(p string) string {
	replacer := strings.NewReplacer(
		".", "\\.",
		"+", "\\+",
		"[", "\\[",
		"]", "\\]",
		"*", "\\*",
	)
	return replacer.Replace(p)
}

type MetaEntry struct {
	fsPath      string
	fcPath      string
	uid         uint32
	gid         uint32
	mode        uint16
	selinux     string
	capability  string
}

func main() {
	if len(os.Args) < 4 {
		fmt.Fprintf(os.Stderr, "Usage: %s <image.img> <dest_dir> <partition_name> [fs_config_out] [file_context_out]\n", os.Args[0])
		os.Exit(1)
	}

	imagePath := os.Args[1]
	destDir := os.Args[2]
	partName := os.Args[3]

	fsConfigOut := ""
	fileContextOut := ""
	if len(os.Args) >= 6 {
		fsConfigOut = os.Args[4]
		fileContextOut = os.Args[5]
	} else {
		parent := filepath.Dir(destDir)
		fsConfigOut = filepath.Join(parent, "fs_config-"+partName)
		fileContextOut = filepath.Join(parent, "file_context-"+partName)
	}

	reader, err := NewF2FSReader(imagePath)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error opening F2FS image %s: %v\n", imagePath, err)
		os.Exit(1)
	}
	defer reader.Close()

	if err := os.MkdirAll(destDir, 0755); err != nil {
		fmt.Fprintf(os.Stderr, "Error creating dest dir %s: %v\n", destDir, err)
		os.Exit(1)
	}

	var entries []MetaEntry

	// Get root inode
	rootIn, err := reader.getInode(reader.sb.RootIno)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error getting root inode: %v\n", err)
		os.Exit(1)
	}

	rootSelinux := reader.getSELinux(rootIn)
	if rootSelinux == "" {
		if partName == "system" {
			rootSelinux = "u:object_r:rootfs:s0"
		} else {
			rootSelinux = fmt.Sprintf("u:object_r:%s_file:s0", partName)
		}
	}

	if partName == "system" {
		entries = append(entries, MetaEntry{
			fsPath:     " ",
			fcPath:     "/",
			uid:        rootIn.IUID,
			gid:        rootIn.IGID,
			mode:       rootIn.IMode & 07777,
			selinux:    rootSelinux,
			capability: "0x0",
		})
	} else {
		entries = append(entries, MetaEntry{
			fsPath:     " ",
			fcPath:     "/" + partName,
			uid:        rootIn.IUID,
			gid:        rootIn.IGID,
			mode:       rootIn.IMode & 07777,
			selinux:    rootSelinux,
			capability: "0x0",
		})
	}

	var extractTree func(nid uint32, relPath, outPath string) error
	extractTree = func(nid uint32, relPath, outPath string) error {
		in, err := reader.getInode(nid)
		if err != nil {
			return err
		}

		ctx := reader.getSELinux(in)

		var fsPath string
		var fcPath string

		if partName == "system" {
			fsPath = relPath
			fcPath = "/" + escapeFileContextPath(relPath)
		} else {
			fsPath = partName + "/" + relPath
			fcPath = "/" + partName + "/" + escapeFileContextPath(relPath)
		}

		cap := "0x0"
		if partName == "system" && (relPath == "system/bin/run-as" || relPath == "system/bin/simpleperf_app_runner") {
			cap = "0xc0"
		}

		if isDir(in.IMode) {
			if err := os.MkdirAll(outPath, 0755); err != nil {
				return err
			}
			_ = os.Chmod(outPath, os.FileMode(in.IMode&07777))

			if relPath != "" {
				entries = append(entries, MetaEntry{
					fsPath:     fsPath,
					fcPath:     fcPath,
					uid:        in.IUID,
					gid:        in.IGID,
					mode:       in.IMode & 07777,
					selinux:    ctx,
					capability: cap,
				})
			}

			children, err := reader.listDir(nid)
			if err != nil {
				return err
			}
			for _, child := range children {
				if child.Name == "." || child.Name == ".." {
					continue
				}
				childRel := child.Name
				if relPath != "" {
					childRel = relPath + "/" + child.Name
				}
				childOut := filepath.Join(outPath, child.Name)
				if err := extractTree(child.Ino, childRel, childOut); err != nil {
					fmt.Fprintf(os.Stderr, "Warning extracting %s: %v\n", childRel, err)
				}
			}
		} else if isSymlink(in.IMode) {
			targetData, err := reader.readFile(nid, int64(in.ISize))
			if err != nil {
				return err
			}
			targetStr := parseSymlinkTarget(targetData)
			if targetStr != "" {
				_ = os.RemoveAll(outPath)
				_ = os.MkdirAll(filepath.Dir(outPath), 0755)
				if err := os.Symlink(targetStr, outPath); err != nil {
					return err
				}
			}

			entries = append(entries, MetaEntry{
				fsPath:     fsPath,
				fcPath:     fcPath,
				uid:        in.IUID,
				gid:        in.IGID,
				mode:       in.IMode & 07777,
				selinux:    ctx,
				capability: cap,
			})
		} else {
			if err := reader.extractFile(nid, outPath); err != nil {
				return err
			}

			entries = append(entries, MetaEntry{
				fsPath:     fsPath,
				fcPath:     fcPath,
				uid:        in.IUID,
				gid:        in.IGID,
				mode:       in.IMode & 07777,
				selinux:    ctx,
				capability: cap,
			})
		}
		return nil
	}

	children, err := reader.listDir(reader.sb.RootIno)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error listing root: %v\n", err)
		os.Exit(1)
	}

	for _, child := range children {
		if child.Name == "." || child.Name == ".." {
			continue
		}
		childOut := filepath.Join(destDir, child.Name)
		if err := extractTree(child.Ino, child.Name, childOut); err != nil {
			fmt.Fprintf(os.Stderr, "Warning extracting %s: %v\n", child.Name, err)
		}
	}

	// Format fs_config
	var fsLines []string
	for _, e := range entries {
		fsLines = append(fsLines, fmt.Sprintf("%s %d %d %o capabilities=%s", e.fsPath, e.uid, e.gid, e.mode, e.capability))
	}
	sort.Strings(fsLines)

	// Format file_context
	var fcLines []string
	for _, e := range entries {
		if e.selinux != "" {
			fcLines = append(fcLines, fmt.Sprintf("%s %s", e.fcPath, e.selinux))
		}
	}
	sort.Strings(fcLines)

	if err := os.WriteFile(fsConfigOut, []byte(strings.Join(fsLines, "\n")+"\n"), 0644); err != nil {
		fmt.Fprintf(os.Stderr, "Error writing %s: %v\n", fsConfigOut, err)
		os.Exit(1)
	}

	if err := os.WriteFile(fileContextOut, []byte(strings.Join(fcLines, "\n")+"\n"), 0644); err != nil {
		fmt.Fprintf(os.Stderr, "Error writing %s: %v\n", fileContextOut, err)
		os.Exit(1)
	}

	fmt.Printf("Successfully unpacked %s (%d files, %d metadata entries)\n", partName, len(entries), len(fcLines))
}
