#!/bin/sh
#creating shortcuts.
ln -fn ../chasm/run_chasm.sh  /usr/bin/Chasm |
ln -fn ../chasm/run_addon.sh  /usr/bin/Chasm-Addon |
chmod +x ../chasm/run_addon.sh |
chmod +x ../chasm/run_chasm.sh
