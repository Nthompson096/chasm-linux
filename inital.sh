#!/bin/sh

#sudo mkdir --parents /usr/share/games/chasm; sudo mv ~/./Chasm/Chasm/ $_
#rm -r /usr/share/games/Chasm/
mkdir ./chasm |
gdown --fuzzy https://drive.google.com/file/d/1n_HepDIrfmF04lH5jykpJRJXi-ti6I_2/view --continue -O ./chasm/chasm.zip &&
unzip ./chasm/chasm.zip -d ./chasm/ &&
rm -r ./chasm/Chasm/music &&
mkdir ./chasm/Chasm/music &&
wget -C "https://ia902806.us.archive.org/13/items/ChasmTheRiftUSA/Chasm%20-%20The%20Rift%20%28USA%29.zip" -O ./chasm/chasm-ost.zip &&
unzip ./chasm/chasm-ost.zip -d ./chasm/Chasm/music &&
cp chasm-linux/run_chasm.sh ./chasm/ &&
cp chasm-linux/chasmadd.conf ./chasm/Chasm/DBox/ &&
cp ./chasm/Chasm/music/Chasm.cue ./chasm/Chasm/ &&
sudo ln -fn ./chasm/run_chasm.sh  /usr/bin/Chasm &&
sudo chmod +x ./chasm/run_chasm.sh
