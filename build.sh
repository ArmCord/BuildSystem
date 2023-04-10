#!/bin/bash
echo "Building $BRANCH running Electron $ELECTRON"
rm -rf ac
rm -rf output/$ELECTRON
mkdir ac
mkdir output
mkdir output/$ELECTRON
wget -O ac/src.zip  https://github.com/ArmCord/ArmCord/archive/refs/heads/$BRANCH.zip
cd ac
unzip src
cd ArmCord-$BRANCH
pnpm i # initial install
npm run build # build with og deps to match typedefs to avoid errors (e.g new capturer api being missing in e21)
pnpm i electron@$ELECTRON
echo "Building Linux"
electron-builder --linux && electron-builder --arm64 --linux 
echo "Building Windows"
electron-builder --windows
cd ~
cp -r ac/ArmCord-$BRANCH/dist/** output/$ELECTRON/
echo "Finished;"
