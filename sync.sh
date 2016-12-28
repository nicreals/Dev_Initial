#!/bin/bash
#author: Nic
#
# 同步编程环境
#
echo "=========Pull Files ========="
git status
git add ./
git commit -m "update"
git pull origin master

echo "========== Copy Files =========="
cd Xcode
rm -rf *
cp -r ~/Library/Developer/Xcode/UserData/CodeSnippets ./
cp -r ~/Library/Developer/Xcode/UserData/FontAndColorThemes/ ./FontAndColorThemes
echo "CodeSnippets:"
ls CodeSnippets/
echo " "
echo "FontAndColorThemes:"
ls FontAndColorThemes/
echo " "
echo "========= Push Files ========="
cd ../
git add ./
git commit -m "sync"
git push origin master
echo "  "
echo "========= End Sync ========="
