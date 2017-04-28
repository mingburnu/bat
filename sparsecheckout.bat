@echo off
git clone -n https://github.com/mingburnu/gittest.git C:\Users\roderick\Documents\gittest
cd C:\Users\roderick\Documents\gittest
git config core.sparsecheckout true
echo a/* >> .git/info/sparse-checkout
git checkout master
