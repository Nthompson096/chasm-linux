#!/bin/bash

#Are you root?

# 	if [ "$EUID" -ne 0 ];
# 	  then echo "Please run sudo"
# 		    exit
# else
# 	[ "$EUID" -ne 1 ];
	
		echo -e "This installer will install Chasm linux, would you like to continue?"

	# fi



select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Installing Chasm"; break;;

		No ) echo "install halted"; exit;;
	esac
done

# let's go ahead and create a directory; ignore the errors.
# This will fail and stop the script if the zip file is not present.
if
	[ -f  zips/game/Chasm.zip ]; then
	zip -F zips/game/Chasm.zip --out zips/game/chasmmaster.zip &&
	# mkdir /usr/share/games/ &&
	#unzip zips/game/chasmmaster.zip -d /usr/share/games/chasm -x "Chasm/*.BAT" "Chasm/*.INI"
		unzip zips/game/chasmmaster.zip -d $HOME/.chasm -x "Chasm/*.BAT" "Chasm/*.INI"
fi

if
	[ -f  zips/music/Cmusic.zip ]; then
	zip -F zips/music/Cmusic.zip --out zips/music/musicmaster.zip &&
	# mkdir /usr/share/games/ &&
	# Wasn't exteacting my files correctly.
	UNZIP_DISABLE_ZIPBOMB_DETECTION=TRUE unzip zips/music/musicmaster.zip -d $HOME/.chasm/Chasm/music/
fi



# if [[ -d $HOME/.chasm ]]; then
# 	chmod 777 $HOME/.chasm/Chasm/* &&
# 	chmod -R 777 $HOME/.chasm/Chasm/EDITDAT &&
# 	chmod -R 777 $HOME/.chasm/Chasm/ADDON1
# 	chmod +x *.sh 
# fi
	#shortcuts 
if [[ -d $HOME/.chasm/ ]]; then
	#statements
	
	cp run_chasm.sh  $HOME/.chasm/ |
	cp run_addon.sh $HOME/.chasm/ |
	cp editor.sh $HOME/.chasm/ |
	cp remove-chasm.sh $HOME/.chasm/ |
	cp addon.conf $HOME/.chasm/Chasm/DBox/ |
	cp chasm.conf $HOME/.chasm/Chasm/DBox/ |
	cp editor.conf $HOME/.chasm/Chasm/DBox/ |
	./create-short.sh
fi