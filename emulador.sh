#!/bin/bash
echo ""
echo "=============================================================================="
echo ""
echo "Executing command '$@'"
echo ""
echo "Iniciando emulador"
echo ""
echo "=============================================================================="
echo ""
export DISPLAY=:99

# cd $WORK_DIRECTORY

docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -p 4723:4723 -v $PWD/sample_apk:/root/tmp -e DEVICE="Samsung Galaxy S6" -e APPIUM=true --name android-container budtmo/docker-android-x86-8.1

set -e