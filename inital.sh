#!/bin/sh

#sudo mkdir --parents /usr/share/games/chasm; sudo mv ~/./Chasm/Chasm/ $_
#rm -r /usr/share/games/Chasm/
mkdir ./chasm
cp -r ./scripts/Chasm/ ./chasm/ &&
sudo ln -fn ./chasm/Chasm/run_chasm.sh  /usr/bin/Chasm &&
sudo chmod +x ./chasm/Chasm/run_chasm.sh
