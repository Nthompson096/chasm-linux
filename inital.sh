#!/bin/sh

mkdir ~/chasm 2>/dev/null |
unzip ./Chasm_Portable.zip -d ~/chasm/ -x "Chasm/*.SAV" &&
mkdir ~/chasm/Chasm/music 2>/dev/null |
wget -c "https://ia902806.us.archive.org/13/items/ChasmTheRiftUSA/Chasm%20-%20The%20Rift%20%28USA%29.zip" -O ~/chasm/chasm-ost.zip &&
unzip ~/chasm/chasm-ost.zip -d ~/chasm/Chasm/music &&
cp run_chasm.sh ~/chasm/ |
cp run_addon.sh ~/chasm/ |
cp addon.conf ~/chasm/Chasm/DBox/ |
cp chasm.conf ~/chasm/Chasm/DBox/ |
sudo sh ./create-short.sh
