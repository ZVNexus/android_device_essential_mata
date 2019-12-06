#!/sbin/sh

relink()
{
    fname=$(basename "$1")
    target="/sbin/hbtp_daemon"
    sed 's|/system/bin/linker64|///////sbin/linker64|' "$1" > "$target"
    chmod 755 $target
}
