attrib -R %systemroot%\System32\drivers\etc\hosts
FIND /C /I "#-----------------KMplayer------------------" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO.>>%WINDIR%\system32\drivers\etc\hosts && echo ^#-----------------KMplayer----------------->>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "127.0.0.1 cdn.kmplayer.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1 cdn.kmplayer.com>>%WINDIR%\system32\drivers\etc\hosts
attrib +R %systemroot%\System32\drivers\etc\hosts

echo Windows Registry Editor Version 5.00>temp.reg
echo.>>temp.reg
echo %weizhi%>>temp.reg
echo "InstallStatus"=dword:00000003>>temp.reg
echo "FName"="KMplayer">>temp.reg
echo "LName"="http://gdaily.org/">>temp.reg
echo.>>temp.reg
reg import temp.reg
del temp.reg
