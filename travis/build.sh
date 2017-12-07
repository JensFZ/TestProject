#!/bin/sh

echo "start build"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile \
	-projectpath $(pwd)/TestProject \
	-buildOSXUniversalPlayer "$(pwd)/build/mac/TestProject.app" \
	-quit Assets/_Scenes/Main.unity

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile \
	-projectpath $(pwd)/TestProject \
	-buildWindowsPlayer "$(pwd)/build/win/TestProject.exe" \
	-quit Assets/_Scenes/Main.unity

(cd build/mac/; zip -r ../../TestProjectMac.zip TestProject.app)
(cd build/win/; zip -r ../../TestProjectWin.zip .)
