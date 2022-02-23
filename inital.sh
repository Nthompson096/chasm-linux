#!/bin/sh

mkdir ./chasm
# Chasm: The Rift https://www.moddb.com/games/chasm-the-rift/downloads/chasm-portable
wget -c "https://sjc7.dl.dbolical.com/dl/2021/01/07/Chasm_Portable.zip?st=BeQVfuej4PXUHByOcrTmmw==&e=1645586079" -O ./chasm/chasm.zip &&
unzip ./chasm/chasm.zip -d ./chasm/ &&
cp chasm-linux/run_chasm.sh ./chasm/ &&
cp chasm-linux/chasmadd.conf ./chasm/Chasm/DBox/ &&
cp ./chasm/Chasm/music/Chasm.cue ./chasm/Chasm/ &&
sudo ln -fn ./chasm/run_chasm.sh  /usr/bin/Chasm &&
sudo chmod +x ./chasm/run_chasm.sh
