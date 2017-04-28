@echo off

SET /P remote=remote url :
SET /P local=local directory :
SET /P target=target/* :

git clone -n %remote% %local%
cd %local%
git config core.sparsecheckout true
echo %target% >> .git/info/sparse-checkout
git checkout master

pause
