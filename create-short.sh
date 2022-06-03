#!/usr/bin/sh
#creating shortcuts.

# if [ "$EUID" -ne 0 ];
# 	  then echo "Please run sudo"
# 		    exit
# 	else
#  	[ "$EUID" -ne 1 ];
# fi

sudo ln -fs ~/.chasm/run_chasm.sh  /usr/bin/Chasm |
sudo ln -fs ~/.chasm/run_addon.sh  /usr/bin/Chasm-Addon |
sudo ln -fs ~/.chasm/editor.sh  /usr/bin/Chasm-Edit |
sudo ln -fs ~/.chasm/remove-chasm.sh /usr/bin/remove-chasm |
chmod +x ~/.chasm/run_addon.sh |
chmod +x ~/.chasm/run_chasm.sh |
chmod +x ~/.chasm/editor.sh