#!/system/bin/sh
# Restored GMS data may retain a previous installation's app UID. Repair only
# the configuration database and its SQLite sidecars; retain account/app data.
APP=/data/user/0/com.google.android.gms
DBDIR="$APP/databases"
[ -d "$APP" ] && [ ! -L "$APP" ] || exit 0
[ -d "$DBDIR" ] && [ ! -L "$DBDIR" ] || exit 0
APP_UID=$(cmd package list packages --user 0 -U com.google.android.gms |
    sed -n 's/^package:com.google.android.gms uid:\([0-9][0-9]*\)$/\1/p')
case "$APP_UID" in
    ''|*[!0-9]*) exit 1 ;;
esac
[ "$APP_UID" -ge 10000 ] || exit 1
[ "$(stat -c %u "$APP")" = "$APP_UID" ] || exit 1
[ "$(stat -c %u "$DBDIR")" = "$APP_UID" ] || exit 1
for NAME in gservices.db gservices.db-wal gservices.db-shm gservices.db-journal; do
    FILE="$DBDIR/$NAME"
    [ -f "$FILE" ] && [ ! -L "$FILE" ] || continue
    [ "$(stat -c %h "$FILE")" = 1 ] || continue
    if [ "$(stat -c %u:%g "$FILE")" != "$APP_UID:$APP_UID" ]; then
        chown "$APP_UID:$APP_UID" "$FILE" || exit 1
        restorecon "$FILE" || exit 1
        log -t UnicaGmsRepair "Repaired ownership of $NAME for UID $APP_UID"
    fi
done
