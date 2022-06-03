#!/bin/sh
# Says on the tin of the file, will remove the chasm folder. be sure to run sudo.

if [ "$EUID" -ne 0 ];
	  then echo "Please run sudo"
		    exit
else
	[ "$EUID" -ne 1 ];
		echo -e "This will uninstall chasm, this cannot be undone."
	fi

select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Removing Chasm"; break;;

		No ) echo "Uninstall halted"; exit;;
	esac
done

if [[ -f /usr/bin/Chasm ]]; then
	rm /usr/bin/Chasm
fi

if [[ -f /usr/bin/Chasm-Addon ]]; then
	rm /usr/bin/Chasm-Addon
fi

if [[ -d .chasm/ ]]; then
	rm -r .chasm/
fi