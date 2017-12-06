#!/bin/sh

echo 'Downloading Unity-2017.2.0f3: '
wget -O Unity.pkg https://netstorage.unity3d.com/unity/46dda1414e51/MacEditorInstaller/Unity-2017.2.0f3.pkg
wget -O Unity-Win.pkg http://netstorage.unity3d.com/unity/46dda1414e51/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-2017.2.0f3.pkg
echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /
sudo installer -dumplog -package Unity-Win.pkg -target /
