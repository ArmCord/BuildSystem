#!/bin/bash

# buildDevE21.sh  buildDevE22.sh  buildStableE21.sh  buildStableE22.sh 
build () {
  echo "Branch: $1"
  echo "Electron: $2"
  export BRANCH=$1
  export ELECTRON=$2
  ./build.sh
}

greeting "Joe"

echo "ArmCord Build Service"
rm -rf toHost
mkdir -p toHost/{stable,dev}
echo "Building stable"
build "stable" "v22.3.5"
build "stable" "v21.4.4"
cp -r output/** toHost/stable/
echo "Building dev"
build "dev" "v22.3.5"
build "dev" "v21.4.4"
cp -r output/** toHost/dev/
echo "Deployment"
./host.sh
echo "Cleaning"
rm -rf ac
rm -rf output
rm -rf toHost
