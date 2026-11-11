#!/usr/bin/env python3
"""Validate English-first Android translations, or create a commented template for a new language."""
from __future__ import annotations
import argparse
from collections import Counter
from pathlib import Path
import re
import sys
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / 'app/src/main/res'
PARTIAL = ROOT / 'scripts/partial-languages.txt'
ANDROID = '{http://schemas.android.com/apk/res/android}'
FORMAT = re.compile(r'%(?:(\d+)\$)?([-#+ 0,(<]*)(?:\d+)?(?:\.\d+)?([tT][A-Za-z]|[bBhHsScCdoxXeEfgGaAn%])')


def read(path: Path):
    entries = {}
    for node in ET.parse(path).getroot().findall('string'):
        name = node.attrib['name']
        if name in entries:
            raise ValueError(f'{path.relative_to(ROOT)}: duplicate key {name}')
        entries[name] = node
    return entries


def formats(text: str):
    found = []
    implicit = 0
    previous = 0
    for match in FORMAT.finditer(text):
        index, flags, kind = match.groups()
        if kind in ('%', 'n'):
            continue
        if '<' in flags:
            position = previous
        elif index:
            position = int(index)
        else:
            implicit += 1
            position = implicit
        previous = position
        found.append((position, kind.lower()))
    return Counter(found)


def resource_dir(language: str) -> str:
    """Map a BCP 47 language-region tag to an Android resource qualifier (pt-BR -> values-pt-rBR)."""
    if language == 'en':
        return 'values'
    return 'values-' + re.sub(r'-([A-Z]{2})$', r'-r\1', language)


def partial_languages() -> set:
    """Registered languages that may still lack strings; missing ones fall back to English."""
    if not PARTIAL.exists():
        return set()
    lines = (line.split('#', 1)[0].strip() for line in PARTIAL.read_text().splitlines())
    return {line for line in lines if line}


def check() -> int:
    english = read(RES / 'values/strings.xml')
    required = {k: n for k, n in english.items() if n.get('translatable') != 'false'}
    languages = [n.attrib[ANDROID + 'name'] for n in ET.parse(RES / 'xml/locales_config.xml').getroot()]
    errors = []
    if len(languages) != len(set(languages)) or not languages or languages[0] != 'en':
        errors.append('locales_config.xml must list English first, with no duplicate locales')
    partial = partial_languages()
    for language in sorted(partial - set(languages)):
        errors.append(f'{language}: listed in scripts/partial-languages.txt but not registered in locales_config.xml')
    if 'en' in partial:
        errors.append('en is the source language and cannot be partial')
    for language in languages:
        path = RES / resource_dir(language) / 'strings.xml'
        if not path.exists():
            errors.append(f'{language}: missing {path.relative_to(ROOT)}')
            continue
        entries = read(path)
        for key in sorted(set(required) - set(entries)):
            # a partial language falls back to English for what it lacks; a complete one must not lose strings
            if language not in partial:
                errors.append(f'{language}: missing {key}')
        for key in sorted(set(entries) - set(english)):
            errors.append(f'{language}: unknown key {key}')
        for key in set(required) & set(entries):
            text = ''.join(entries[key].itertext())
            if not text.strip():
                errors.append(f'{language}: empty {key}')
            if required[key].get('formatted') != 'false' and formats(''.join(required[key].itertext())) != formats(text):
                errors.append(f'{language}: format placeholders differ for {key}')
        note = ' (partial, English fills the rest)' if language in partial else ''
        print(f'{language}: {len(set(entries) & set(required))}/{len(required)} translatable strings{note}')
    for path in (ROOT / 'app/src/main/java').rglob('*.java'):
        for key in re.findall(r'"(island_[a-z0-9_]+)"', path.read_text()):
            if key not in english:
                errors.append(f'{path.relative_to(ROOT)}: unknown runtime string {key}')
    for error in errors:
        print(error, file=sys.stderr)
    return bool(errors)


def init(language: str) -> int:
    if not re.fullmatch(r'[a-z]{2,3}(?:-[A-Z]{2})?', language) or language == 'en':
        raise ValueError('Use an ISO language or language-region tag, for example de or pt-BR; English is values/strings.xml')
    path = RES / resource_dir(language) / 'strings.xml'
    if path.exists():
        raise ValueError(f'Refusing to overwrite {path.relative_to(ROOT)}')
    root = ET.Element('resources')
    for key, node in read(RES / 'values/strings.xml').items():
        if node.get('translatable') == 'false':
            continue
        root.append(ET.Comment(' English source: ' + (node.text or '').replace('--', '—') + ' '))
        target = ET.SubElement(root, 'string', dict(node.attrib))
        target.text = node.text
    ET.indent(root, '    ')
    path.parent.mkdir(parents=True)
    ET.ElementTree(root).write(path, encoding='utf-8', xml_declaration=True)
    print(f'Created {path.relative_to(ROOT)}. Translate values, then register {language} in xml/locales_config.xml. A language that is not finished yet may also be listed in scripts/partial-languages.txt.')
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=('check', 'init'), nargs='?', default='check')
    parser.add_argument('language', nargs='?')
    args = parser.parse_args()
    try:
        if args.command == 'init':
            if not args.language:
                parser.error('init requires a language code')
            return init(args.language)
        return check()
    except (ValueError, ET.ParseError) as error:
        print(error, file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
