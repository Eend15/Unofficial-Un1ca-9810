#!/usr/bin/env bash
# Visible Ubuntu console log watcher. Does not edit or restart the build.
set -u
LOG="/home/admin1/Unofficial-Un1ca-9810/out/target/star2lte/dsack-erofs-build.log"
STATUS="/home/admin1/Unofficial-Un1ca-9810/out/target/star2lte/dsack-erofs-build.status"
printf '\033[1;36mGalaxy S9+ / star2lte — DS-ACK KernelSU Next 3.4.0 EROFS build\033[0m\n'
printf 'Log: %s\nStatus: %s\n' "$LOG" "$STATUS"
printf 'Dit venster toont de live buildlog. Laat het gerust open.\n\n'
while [ ! -f "$LOG" ]; do sleep 1; done
exec tail -n 70 -F "$LOG"
