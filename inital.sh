#!/bin/sh

#sudo mkdir --parents /usr/share/games/chasm; sudo mv ~/./Chasm/Chasm/ $_
#rm -r /usr/share/games/Chasm/
mkdir ./chasm
wget -c "https://www.moddb.com/downloads/mirror/206588/114/eb35009dcf17366ea9b7559f5f80e27c/?referer=https%3A%2F%2Fwww.gamepressure.com%2F" -O ./chasm/chasm.zip &&
unzip ./chasm/chasm.zip -d ./chasm/ &&
cp chasm-linux/run_chasm.sh ./chasm/ &&
cp chasm-linux/chasmadd.conf ./chasm/Chasm/DBox/ &&
cp ./chasm/Chasm/music/Chasm.cue ./chasm/Chasm/ &&
sudo ln -fn ./chasm/run_chasm.sh  /usr/bin/Chasm &&
sudo chmod +x ./chasm/run_chasm.sh
