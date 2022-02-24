#!/bin/sh

mkdir ./chasm |
gdown --fuzzy https://drive.google.com/file/d/1n_HepDIrfmF04lH5jykpJRJXi-ti6I_2/view --continue -O ./chasm/chasm.zip &&
unzip ./chasm/chasm.zip -d ./chasm/ &&
rm -r ./chasm/Chasm/music &&
mkdir ./chasm/Chasm/music |
wget -c "https://ia902806.us.archive.org/13/items/ChasmTheRiftUSA/Chasm%20-%20The%20Rift%20%28USA%29.zip" -O ./chasm/chasm-ost.zip &&
unzip ./chasm/chasm-ost.zip -d ./chasm/Chasm/music &&
cp chasm-linux/run_chasm.sh ./chasm/ &&
cp chasm-linux/run_addon.sh ./chasm/ &&
cp chasm-linux/addon.conf ./chasm/Chasm/DBox/ &&
cp chasm-linux/chasm.conf ./chasm/Chasm/DBox/ &&
sudo ln -fn ./chasm/run_chasm.sh  /usr/bin/Chasm &&
sudo ln -fn ./chasm/run_addon.sh  /usr/bin/Chasm-Addon &&
sudo chmod +x ./chasm/run_addon.sh &&
sudo chmod +x ./chasm/run_chasm.sh
