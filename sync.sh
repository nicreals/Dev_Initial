#!/bin/bash
#author: Nic
#
# 设置git代理
#
echo "========== Copy Files =========="
cd Xcode
rm -rf *
cp -r ~/Library/Developer/Xcode/UserData/CodeSnippets ./
cp -r ~/Library/Developer/Xcode/UserData/FontAndColorThemes/ ./FontAndColorThemes
echo "CodeSnippets"
ls CodeSnippets/
echo " "
echo "FontAndColorThemes"
ls FontAndColorThemes/
echo " "
echo "========= Push Files ========="
cd ../
git add ./
git commit -m "sync"
git push origin master
echo "========= End Sync ========="
