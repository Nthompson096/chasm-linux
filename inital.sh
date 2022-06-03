#!/bin/bash

#Are you root?

	if [ "$EUID" -ne 0 ];
	  then echo "Please run sudo"
		    exit
else
	[ "$EUID" -ne 1 ];
	
		echo -e "This installer will install Chasm linux, would you like to continue?"

	fi



select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Installing Chasm"; break;;

		No ) echo "install halted"; exit;;
	esac
done

# let's go ahead and create a directory; ignore the errors.
# This will fail and stop the script if the zip file is not present.
if 
	[ ! -f Chasm_Portable.zip ]; then
	echo "Chasm Portable doesn't exist; halting."
	exit
else
	[ -f  Chasm_Portable.zip ]
	unzip ./Chasm_Portable.zip -d /usr/share/games/chasm/ -x "Chasm/*.SAV" "Chasm/*.BAT" "Chasm/*.INI" "Chasm/music/*" "soundtrack mp3s/*" &&
	chmod +x *.sh &&
chmod 777 /usr/share/games/chasm/Chasm/* |
chmod 777 /usr/share/games/chasm/Chasm/EDITDAT/* |
chmod -R 777 /usr/share/games/chasm/Chasm/ADDON1/*

fi
echo -e "Would you like to Download/install the OST for chasm?"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Downloading Chasm OST"
mkdir /usr/share/games/chasm/Chasm/music &&
wget -c "https://ia902806.us.archive.org/13/items/ChasmTheRiftUSA/Chasm%20-%20The%20Rift%20%28USA%29.zip" -O /usr/share/games/chasm/Chasm-The-Rift.zip &&
unzip /usr/share/games/chasm/Chasm-The-Rift.zip -d /usr/share/games/chasm/Chasm/music &&
cp run_chasm.sh  /usr/share/games/chasm |
cp run_addon.sh /usr/share/games/chasm |
cp editor.sh /usr/share/games/chasm |
cp remove-chasm.sh /usr/share/games/chasm |
cp addon.conf /usr/share/games/chasm/Chasm/DBox/ |
cp chasm.conf /usr/share/games/chasm/Chasm/DBox/ |
cp editor.conf /usr/share/games/chasm/Chasm/DBox/ |
./create-short.sh ;  exit;;

		No ) echo "ok not installing/Downloading the OST for chasm." &&
cp run_chasm.sh  /usr/share/games/chasm |
cp run_addon.sh /usr/share/games/chasm |
cp editor.sh /usr/share/games/chasm |
cp remove-chasm.sh /usr/share/games/chasm |
cp addon.conf /usr/share/games/chasm/Chasm/DBox/ |
cp chasm.conf /usr/share/games/chasm/Chasm/DBox/ |
cp editor.conf /usr/share/games/chasm/Chasm/DBox/ |
./create-short.sh; exit;;
	esac
done
