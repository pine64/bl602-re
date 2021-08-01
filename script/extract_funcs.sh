ctags --fields=+ne -o - --sort=no ../blobs/bl602_demo_wifi.ghidra.c | sed -r  's/([^\t]+).*line:([0-9]+).*end:([0-9]+)/\1 \2 \3/'
 