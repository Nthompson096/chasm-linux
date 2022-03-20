#!/bin/sh
# let's go ahead and create a directory; ignore the errors.
mkdir ~/chasm 2>/dev/null |
# This will fail and stop the script if the zip file is not present.
unzip ./Chasm_Portable.zip -d ~/chasm/ -x "Chasm/*.SAV" &&
mkdir ~/chasm/Chasm/music 2>/dev/null |
wget -c "https://ia902806.us.archive.org/13/items/ChasmTheRiftUSA/Chasm%20-%20The%20Rift%20%28USA%29.zip" -O ~/chasm/chasm-ost.zip &&
unzip ~/chasm/chasm-ost.zip -d ~/chasm/Chasm/music &&
# Copy paste from the git folder to the home folder of the user, much much safer this way.
cp run_chasm.sh ~/chasm/ |
cp run_addon.sh ~/chasm/ |
cp addon.conf ~/chasm/Chasm/DBox/ |
cp chasm.conf ~/chasm/Chasm/DBox/ |
# Creating shortcuts in /usr/bin, figured it would be easier.
sudo sh ./create-short.sh
