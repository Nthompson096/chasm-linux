#!/bin/sh
#creating shortcuts.
ln -fs /usr/share/games/chasm/run_chasm.sh  /usr/bin/Chasm |
ln -fs /usr/share/games/chasm/run_addon.sh  /usr/bin/Chasm-Addon |
ln -fs /usr/share/games/chasm/editor.sh  /usr/bin/Chasm-Edit |
ln -fs /usr/share/games/chasm/remove-chasm.sh /usr/bin/remove-chasm |
chmod +x /usr/share/games/chasm/run_addon.sh |
chmod +x /usr/share/games/chasm/run_chasm.sh
chmod +x /usr/share/games/chasm/editor.sh