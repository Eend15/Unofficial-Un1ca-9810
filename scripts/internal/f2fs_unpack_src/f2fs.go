//
// SPDX-FileCopyrightText: Sushrut1101
//
// SPDX-License-Identifier: GPL-3.0-only
//

package main

import (
	"encoding/binary"
	"fmt"
	"io"
	"os"
	"strings"
	"unicode/utf16"
)

const (
	F2FSMagic            uint32 = 0xF2F52010
	F2FSBlkSize                 = 4096
	F2FSSBOffset                = 1024
	F2FSNameLen                 = 255
	F2FSSlotLen                 = 8
	MaxActiveLogs               = 16
	F2FSInlineXAttr             = 0x01
	F2FSInlineData              = 0x02
	F2FSInlineDentry            = 0x04
	F2FSDataExist               = 0x08
	F2FSInlineDots              = 0x10
	F2FSExtraAttr               = 0x20
	FTUnknown                   = 0
	FTRegFile                   = 1
	FTDir                       = 2
	FTChrDev                    = 3
	FTBlkDev                    = 4
	FTFIFO                      = 5
	FTSock                      = 6
	FTSymlink                   = 7
	NullAddr             uint32 = 0x00000000
	NewAddr              uint32 = 0xFFFFFFFF
	CompressAddr         uint32 = 0xFFFFFFFE
	CPLargeNATBitmapFlag        = 0x00000400
	NATEntrySize                = 9
	DirEntrySize                = 11
	NRDentryInBlock             = 214
	DentryBitmapSize            = 27
	NodeFooterSize              = 24
)

var fileTypeChar = map[int]byte{
	FTUnknown: '?', FTRegFile: '-', FTDir: 'd',
	FTChrDev: 'c', FTBlkDev: 'b', FTFIFO: 'p',
	FTSock: 's', FTSymlink: 'l',
}

type Superblock struct {
	Magic, LogSectorSize, LogSectorsPerBlk, LogBlocksize, LogBlocksPerSeg, SegsPerSec, SecsPerZone                                            uint32
	ChecksumOffset, SectionCount, SegmentCount, SegmentCountCkpt, SegmentCountSIT, SegmentCountNAT                                            uint32
	SegmentCountSSA, SegmentCountMain, Segment0BlkAddr, CPBlkAddr, SITBlkAddr, NATBlkAddr, SSABlkAddr, MainBlkAddr, RootIno, NodeIno, MetaIno uint32
	MajorVer, MinorVer                                                                                                                        uint16
	BlockCount                                                                                                                                uint64
	VolumeName                                                                                                                                string
}

type Inode struct {
	IMode                                             uint16
	IAdvise, IInline                                  uint8
	IUID, IGID, ILinks                                uint32
	ISize, IBlocks, IAtime, ICtime, IMtime            uint64
	ICurrentDepth, IXAttrNID, IFlags, IPino, INameLen uint32
	IName                                             string
	IAddr                                             []uint32
	INID                                              [5]uint32
	FooterNID, FooterIno                              uint32
	addrStart                                         int
	extraISize, inlineXAttrSize                       uint16
	numAddrs, totalAddrSlots                          int
	raw                                               []byte
}

type DirEntry struct {
	Name     string
	Ino      uint32
	FileType int
}

type F2FSReader struct {
	path                                        string
	f                                           *os.File
	sb                                          Superblock
	natBitmap                                   []byte
	blockSize, blocksPerSeg, natEntriesPerBlock int
}

func NewF2FSReader(imagePath string) (*F2FSReader, error) {
	f, err := os.Open(imagePath)
	if err != nil {
		return nil, fmt.Errorf("open: %w", err)
	}
	r := &F2FSReader{path: imagePath, f: f, blockSize: F2FSBlkSize}
	if err := r.parseSuperblock(); err != nil {
		f.Close()
		return nil, err
	}
	return r, nil
}

func (r *F2FSReader) Close() { r.f.Close() }

func (r *F2FSReader) readBlock(blkAddr uint32) ([]byte, error) {
	buf := make([]byte, r.blockSize)
	if _, err := r.f.ReadAt(buf, int64(blkAddr)*int64(r.blockSize)); err != nil {
		return nil, fmt.Errorf("readBlock(%d): %w", blkAddr, err)
	}
	return buf, nil
}

func (r *F2FSReader) readAt(offset int64, size int) ([]byte, error) {
	buf := make([]byte, size)
	n, err := r.f.ReadAt(buf, offset)
	if err != nil && err != io.EOF {
		return nil, err
	}
	return buf[:n], nil
}

func le16(b []byte, off int) uint16 { return binary.LittleEndian.Uint16(b[off:]) }
func le32(b []byte, off int) uint32 { return binary.LittleEndian.Uint32(b[off:]) }
func le64(b []byte, off int) uint64 { return binary.LittleEndian.Uint64(b[off:]) }

func (r *F2FSReader) parseSuperblock() error {
	data, err := r.readAt(F2FSSBOffset, 512)
	if err != nil {
		return fmt.Errorf("read superblock: %w", err)
	}
	magic := le32(data, 0)
	if magic != F2FSMagic {
		return fmt.Errorf("not an F2FS image")
	}
	sb := &r.sb
	sb.Magic = magic
	sb.MajorVer = le16(data, 4)
	sb.MinorVer = le16(data, 6)
	sb.LogSectorSize = le32(data, 8)
	sb.LogSectorsPerBlk = le32(data, 12)
	sb.LogBlocksize = le32(data, 16)
	sb.LogBlocksPerSeg = le32(data, 20)
	sb.SegsPerSec = le32(data, 24)
	sb.SecsPerZone = le32(data, 28)
	sb.ChecksumOffset = le32(data, 32)
	sb.BlockCount = le64(data, 36)
	sb.SectionCount = le32(data, 44)
	sb.SegmentCount = le32(data, 48)
	sb.SegmentCountCkpt = le32(data, 52)
	sb.SegmentCountSIT = le32(data, 56)
	sb.SegmentCountNAT = le32(data, 60)
	sb.SegmentCountSSA = le32(data, 64)
	sb.SegmentCountMain = le32(data, 68)
	sb.Segment0BlkAddr = le32(data, 72)
	sb.CPBlkAddr = le32(data, 76)
	sb.SITBlkAddr = le32(data, 80)
	sb.NATBlkAddr = le32(data, 84)
	sb.SSABlkAddr = le32(data, 88)
	sb.MainBlkAddr = le32(data, 92)
	sb.RootIno = le32(data, 96)
	sb.NodeIno = le32(data, 100)
	sb.MetaIno = le32(data, 104)

	volData, _ := r.readAt(F2FSSBOffset+0x6C, 512)
	if len(volData) >= 2 {
		u16s := make([]uint16, len(volData)/2)
		for i := range u16s {
			u16s[i] = binary.LittleEndian.Uint16(volData[i*2:])
		}
		end := len(u16s)
		for end > 0 && u16s[end-1] == 0 {
			end--
		}
		sb.VolumeName = string(utf16.Decode(u16s[:end]))
	}
	r.blockSize = 1 << sb.LogBlocksize
	r.blocksPerSeg = 1 << sb.LogBlocksPerSeg
	r.natEntriesPerBlock = r.blockSize / NATEntrySize
	return nil
}

func (r *F2FSReader) natBlockIsSet1(blockIdx int) bool {
	if r.natBitmap == nil {
		return false
	}
	if byteIdx, bitIdx := blockIdx/8, uint(blockIdx%8); byteIdx < len(r.natBitmap) {
		return r.natBitmap[byteIdx]&(1<<bitIdx) != 0
	}
	return false
}

func (r *F2FSReader) getNATEntry(nid uint32) (ino, blkAddr uint32, err error) {
	blockOff, entryOff := int(nid)/r.natEntriesPerBlock, int(nid)%r.natEntriesPerBlock
	segOff, blkInSeg := blockOff/r.blocksPerSeg, blockOff%r.blocksPerSeg
	set0Blk := uint32(int(r.sb.NATBlkAddr) + segOff*2*r.blocksPerSeg + blkInSeg)
	set1Blk := uint32(int(r.sb.NATBlkAddr) + (segOff*2+1)*r.blocksPerSeg + blkInSeg)

	readEntry := func(physBlk uint32) (uint32, uint32, error) {
		data, err := r.readBlock(physBlk)
		if err != nil {
			return 0, 0, err
		}
		return le32(data, entryOff*NATEntrySize+1), le32(data, entryOff*NATEntrySize+5), nil
	}
	isValid := func(addr uint32) bool { return addr != 0 && addr != NewAddr && addr < uint32(r.sb.BlockCount) }

	primary, secondary := set0Blk, set1Blk
	if r.natBlockIsSet1(blockOff) {
		primary, secondary = set1Blk, set0Blk
	}

	ino, blkAddr, err = readEntry(primary)
	if err == nil && isValid(blkAddr) {
		return ino, blkAddr, nil
	}
	ino2, blkAddr2, err2 := readEntry(secondary)
	if err2 == nil && isValid(blkAddr2) {
		return ino2, blkAddr2, nil
	}
	return ino, blkAddr, err
}

func (r *F2FSReader) readNode(nid uint32) ([]byte, error) {
	_, blkAddr, err := r.getNATEntry(nid)
	if err != nil {
		return nil, fmt.Errorf("NAT lookup nid=%d: %w", nid, err)
	}
	if blkAddr == 0 || blkAddr == NewAddr {
		return nil, fmt.Errorf("nid=%d has null/new addr", nid)
	}
	data, err := r.readBlock(blkAddr)
	if err != nil {
		return nil, err
	}
	if le32(data, 4072) == nid {
		return data, nil
	}

	blockOff, entryOff := int(nid)/r.natEntriesPerBlock, int(nid)%r.natEntriesPerBlock
	segOff, blkInSeg := blockOff/r.blocksPerSeg, blockOff%r.blocksPerSeg
	for s := 0; s <= 1; s++ {
		altBlk := uint32(int(r.sb.NATBlkAddr) + (segOff*2+s)*r.blocksPerSeg + blkInSeg)
		if altBlk == blkAddr {
			continue
		}
		if altNAT, err2 := r.readBlock(altBlk); err2 == nil {
			if altAddr := le32(altNAT, entryOff*NATEntrySize+5); altAddr != 0 && altAddr != NewAddr && altAddr < uint32(r.sb.BlockCount) {
				if altNode, err3 := r.readBlock(altAddr); err3 == nil && le32(altNode, 4072) == nid {
					return altNode, nil
				}
			}
		}
	}
	return data, nil
}

func (r *F2FSReader) parseInode(data []byte) *Inode {
	if data == nil {
		return nil
	}
	in := &Inode{raw: data}
	in.IMode = le16(data, 0)
	in.IAdvise = data[2]
	in.IInline = data[3]
	in.IUID = le32(data, 4)
	in.IGID = le32(data, 8)
	in.ILinks = le32(data, 12)
	in.ISize = le64(data, 16)
	in.IBlocks = le64(data, 24)
	in.IAtime = le64(data, 32)
	in.ICtime = le64(data, 40)
	in.IMtime = le64(data, 48)
	in.ICurrentDepth = le32(data, 72)
	in.IXAttrNID = le32(data, 76)
	in.IFlags = le32(data, 80)
	in.IPino = le32(data, 84)
	in.INameLen = le32(data, 88)
	if nameLen := int(in.INameLen); nameLen > 0 {
		if nameLen > F2FSNameLen {
			nameLen = F2FSNameLen
		}
		if 92+nameLen <= len(data) {
			in.IName = strings.TrimRight(string(data[92:92+nameLen]), "\x00")
		}
	}
	in.addrStart = 360
	if in.IInline&F2FSExtraAttr != 0 {
		in.extraISize = le16(data, 360)
		in.inlineXAttrSize = le16(data, 362)
		in.addrStart = 360 + int(in.extraISize)
	}
	in.totalAddrSlots = (4052 - in.addrStart) / 4
	in.numAddrs = in.totalAddrSlots
	if in.IInline&F2FSInlineXAttr != 0 {
		slots := int(in.inlineXAttrSize)
		if slots == 0 {
			slots = 50
		}
		in.numAddrs -= slots
		if in.numAddrs < 0 {
			in.numAddrs = 0
		}
	}
	in.IAddr = make([]uint32, in.numAddrs)
	for i := range in.IAddr {
		in.IAddr[i] = le32(data, in.addrStart+i*4)
	}
	for i := 0; i < 5; i++ {
		in.INID[i] = le32(data, 4052+i*4)
	}
	in.FooterNID = le32(data, 4072)
	in.FooterIno = le32(data, 4076)
	return in
}

func (r *F2FSReader) getInode(nid uint32) (*Inode, error) {
	data, err := r.readNode(nid)
	if err != nil {
		return nil, err
	}
	return r.parseInode(data), nil
}

func (r *F2FSReader) readDentryBlock(data []byte) []DirEntry {
	var entries []DirEntry
	bitmap, dentryStart, fnameStart := data[:DentryBitmapSize], DentryBitmapSize+3, DentryBitmapSize+3+NRDentryInBlock*DirEntrySize
	for i := 0; i < NRDentryInBlock; {
		if bitmap[i/8]&(1<<uint(i%8)) == 0 {
			i++
			continue
		}
		off := dentryStart + i*DirEntrySize
		if off+DirEntrySize > len(data) {
			break
		}
		ino, nameLen, fileType := le32(data, off+4), int(le16(data, off+8)), int(data[off+10])
		fnameOff := fnameStart + i*F2FSSlotLen
		name := fmt.Sprintf("<ino:%d>", ino)
		if nameLen > 0 && fnameOff+nameLen <= len(data) {
			name = string(data[fnameOff : fnameOff+nameLen])
		}
		if ino > 0 && nameLen > 0 {
			entries = append(entries, DirEntry{Name: name, Ino: ino, FileType: fileType})
		}
		skip := (nameLen + F2FSSlotLen - 1) / F2FSSlotLen
		if skip < 1 {
			skip = 1
		}
		i += skip
	}
	return entries
}

func (r *F2FSReader) readInlineDentry(in *Inode) []DirEntry {
	// Account for the 4-byte reserved i_addr[0] slot
	available := in.numAddrs*4 - 4
	if available <= 0 {
		return nil
	}

	inlineStart := in.addrStart + 4
	inline := in.raw[inlineStart : inlineStart+available]

	nr := 0
	for testNR := 1; testNR < 1000; testNR++ {
		if (testNR+7)/8+4+testNR*DirEntrySize+testNR*F2FSSlotLen > len(inline) {
			nr = testNR - 1
			break
		}
		nr = testNR
	}
	if nr <= 0 {
		return nil
	}
	bmSize := (nr + 7) / 8
	reservedSize := len(inline) - bmSize - nr*DirEntrySize - nr*F2FSSlotLen
	if reservedSize < 0 {
		nr--
		bmSize = (nr + 7) / 8
		reservedSize = len(inline) - bmSize - nr*DirEntrySize - nr*F2FSSlotLen
	}
	if nr <= 0 {
		return nil
	}
	var entries []DirEntry
	bitmap, dentryStart, fnameStart := inline[:bmSize], bmSize+reservedSize, bmSize+reservedSize+nr*DirEntrySize
	for i := 0; i < nr; {
		if bitmap[i/8]&(1<<uint(i%8)) == 0 {
			i++
			continue
		}
		off := dentryStart + i*DirEntrySize
		if off+DirEntrySize > len(inline) {
			break
		}
		ino, nameLen, fileType := le32(inline, off+4), int(le16(inline, off+8)), int(inline[off+10])
		fnameOff := fnameStart + i*F2FSSlotLen
		name := fmt.Sprintf("<ino:%d>", ino)
		if nameLen > 0 && fnameOff+nameLen <= len(inline) {
			name = string(inline[fnameOff : fnameOff+nameLen])
		}
		if ino > 0 && nameLen > 0 {
			entries = append(entries, DirEntry{Name: name, Ino: ino, FileType: fileType})
		}
		skip := (nameLen + F2FSSlotLen - 1) / F2FSSlotLen
		if skip < 1 {
			skip = 1
		}
		i += skip
	}
	return entries
}

func (r *F2FSReader) getDataBlocks(in *Inode) []uint32 {
	var blocks []uint32
	toAddr := func(a uint32) uint32 {
		if a == NullAddr || a == NewAddr || a == CompressAddr {
			return ^uint32(0)
		}
		return a
	}
	for _, a := range in.IAddr {
		blocks = append(blocks, toAddr(a))
	}
	for idx := 0; idx < 4; idx++ {
		if in.INID[idx] == 0 {
			continue
		}
		if nodeData, err := r.readNode(in.INID[idx]); err == nil {
			for i := 0; i < 1018; i++ {
				if idx < 2 {
					blocks = append(blocks, toAddr(le32(nodeData, i*4)))
				} else if childNID := le32(nodeData, i*4); childNID != 0 {
					if childData, err := r.readNode(childNID); err == nil {
						for j := 0; j < 1018; j++ {
							blocks = append(blocks, toAddr(le32(childData, j*4)))
						}
					}
				}
			}
		}
	}
	return blocks
}

func (r *F2FSReader) listDir(nid uint32) ([]DirEntry, error) {
	in, err := r.getInode(nid)
	if err != nil {
		return nil, err
	}
	if in.IInline&F2FSInlineDentry != 0 {
		return r.readInlineDentry(in), nil
	}
	var entries []DirEntry
	blocksNeeded := (int(in.ISize) + r.blockSize - 1) / r.blockSize
	for i, blkAddr := range r.getDataBlocks(in) {
		if i >= blocksNeeded {
			break
		}
		if blkAddr != ^uint32(0) {
			if data, err := r.readBlock(blkAddr); err == nil {
				entries = append(entries, r.readDentryBlock(data)...)
			}
		}
	}
	return entries, nil
}

func (r *F2FSReader) readFile(nid uint32, maxSize int64) ([]byte, error) {
	in, err := r.getInode(nid)
	if err != nil {
		return nil, err
	}
	fileSize := int64(in.ISize)
	if maxSize >= 0 && fileSize > maxSize {
		fileSize = maxSize
	}

	// Handle Inline Data
	if in.IInline&F2FSInlineData != 0 {
		// F2FS Quirk: Inline data starts 4 bytes AFTER the address array start.
		// i_addr[0] is reserved by the filesystem.
		inlineStart := in.addrStart + 4
		available := int64(in.numAddrs*4 - 4)

		if fileSize > available {
			fileSize = available
		}

		out := make([]byte, fileSize)
		copy(out, in.raw[inlineStart:inlineStart+int(fileSize)])
		return out, nil
	}

	// Handle Standard Block-based Data
	result := make([]byte, 0, fileSize)
	remaining := fileSize
	for _, blkAddr := range r.getDataBlocks(in) {
		if remaining <= 0 {
			break
		}
		chunk := int64(r.blockSize)
		if chunk > remaining {
			chunk = remaining
		}
		if blkAddr == ^uint32(0) {
			result = append(result, make([]byte, chunk)...)
		} else if data, err := r.readBlock(blkAddr); err == nil {
			result = append(result, data[:chunk]...)
		} else {
			return result, err
		}
		remaining -= chunk
	}
	return result, nil
}

func (r *F2FSReader) resolvePath(path string) (uint32, *Inode, error) {
	if path == "/" || path == "" {
		nid := r.sb.RootIno
		in, err := r.getInode(nid)
		return nid, in, err
	}
	currentNID := r.sb.RootIno
	for _, part := range strings.Split(strings.Trim(path, "/"), "/") {
		if part == "" {
			continue
		}
		entries, err := r.listDir(currentNID)
		if err != nil {
			return 0, nil, fmt.Errorf("listDir nid=%d: %w", currentNID, err)
		}
		found := false
		for _, e := range entries {
			if e.Name == part {
				currentNID = e.Ino
				found = true
				break
			}
		}
		if !found {
			return 0, nil, fmt.Errorf("path component %q not found", part)
		}
	}
	in, err := r.getInode(currentNID)
	return currentNID, in, err
}

func isDir(mode uint16) bool     { return mode&0xF000 == 0x4000 }
func isSymlink(mode uint16) bool { return mode&0xF000 == 0xA000 }
func isChrDev(mode uint16) bool  { return mode&0xF000 == 0x2000 }
func isBlkDev(mode uint16) bool  { return mode&0xF000 == 0x6000 }
func isFIFO(mode uint16) bool    { return mode&0xF000 == 0x1000 }
func isSocket(mode uint16) bool  { return mode&0xF000 == 0xC000 }

func formatMode(mode uint16) string {
	var sb strings.Builder
	switch {
	case isDir(mode):
		sb.WriteByte('d')
	case isSymlink(mode):
		sb.WriteByte('l')
	case isChrDev(mode):
		sb.WriteByte('c')
	case isBlkDev(mode):
		sb.WriteByte('b')
	case isFIFO(mode):
		sb.WriteByte('p')
	case isSocket(mode):
		sb.WriteByte('s')
	default:
		sb.WriteByte('-')
	}
	for _, p := range []struct {
		bit  uint16
		char byte
	}{
		{0400, 'r'}, {0200, 'w'}, {0100, 'x'}, {0040, 'r'}, {0020, 'w'}, {0010, 'x'}, {0004, 'r'}, {0002, 'w'}, {0001, 'x'},
	} {
		if mode&p.bit != 0 {
			sb.WriteByte(p.char)
		} else {
			sb.WriteByte('-')
		}
	}
	return sb.String()
}
