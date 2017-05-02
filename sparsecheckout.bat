@echo off

SET /P remote=remote url :
SET /P local=local directory :
SET /P target=target/* :
SET /P branch=branch name :

git clone -n %remote% %local%
cd %local%
git config core.sparsecheckout true
echo %target% >> .git/info/sparse-checkout
git checkout %branch%

pause
