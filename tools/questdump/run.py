#!/usr/bin/env python3
import argparse
import os
import pathlib
import shutil
import subprocess
import sys
import tempfile

HERE = pathlib.Path(__file__).resolve().parent


def find_java(explicit: str | None, tool: str) -> str:
    if explicit:
        return str(pathlib.Path(explicit) / 'bin' / tool)
    home = os.environ.get('JAVA_HOME')
    if home:
        return str(pathlib.Path(home) / 'bin' / tool)
    found = shutil.which(tool)
    if not found:
        raise SystemExit(f'{tool} not found: pass --jdk or set JAVA_HOME to a JDK 17')
    return found


def main() -> int:
    parser = argparse.ArgumentParser(description="Write the mod's default saga and side quest JSON files without starting Minecraft.")
    parser.add_argument('--mod', required=True, help='DragonMineZ repository, compiled (build/classes/java/main and build/classpath/*.txt must exist)')
    parser.add_argument('--out', required=True, help='output folder; quests land in <out>/dragonminez/{quests,sidequests}')
    parser.add_argument('--jdk', help='JDK 17 home (defaults to JAVA_HOME or the PATH)')
    args = parser.parse_args()

    mod = pathlib.Path(args.mod).resolve()
    out = pathlib.Path(args.out).resolve()
    classpath_file = mod / 'build' / 'classpath' / 'runServer_minecraftClasspath.txt'
    classes = mod / 'build' / 'classes' / 'java' / 'main'
    if not classpath_file.exists() or not any(classes.rglob('SideQuestDefaults.class')):
        raise SystemExit('Compile the mod first (gradlew compileJava, or build it in the IDE) so build/classes and build/classpath exist.')

    entries = [line.strip() for line in classpath_file.read_text().splitlines() if line.strip()]
    classpath = os.pathsep.join([str(classes), str(mod / 'build' / 'resources' / 'main')] + entries)
    if out.exists():
        shutil.rmtree(out)
    (out / 'game').mkdir(parents=True)
    with tempfile.TemporaryDirectory(prefix='questdump-') as tmp:
        quest_sources = mod / 'src' / 'main' / 'java' / 'com' / 'dragonminez' / 'common' / 'quest'
        sources = [str(HERE / 'QuestDump.java'), str(quest_sources / 'QuestDefaults.java'), str(quest_sources / 'SideQuestDefaults.java')]
        subprocess.run([find_java(args.jdk, 'javac'), '-nowarn', '-proc:none', '-encoding', 'UTF-8', '-cp', classpath, '-d', tmp] + sources, check=True)
        subprocess.run([find_java(args.jdk, 'java'), '-cp', tmp + os.pathsep + classpath, 'QuestDump', str(out)], check=True, cwd=out)
    sides = len(list((out / 'dragonminez' / 'sidequests').rglob('*.json')))
    sagas = len(list((out / 'dragonminez' / 'quests').rglob('*.json')))
    print(f'{sides} side quests and {sagas} saga quests written to {out / "dragonminez"}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
