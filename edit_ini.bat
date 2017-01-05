@echo off

:start
IF EXIST "settings.ini" (
>nul find "[setting]" settings.ini && (
echo >nul
) || (
del settings.ini
echo.[setting] >> settings.ini
)

>nul find "ResolutionWidth=" settings.ini && (
echo >nul
) || (
echo.ResolutionWidth=640 >> settings.ini
)

>nul find "ResolutionHeight=" settings.ini && (
echo >nul
) || (
echo.ResolutionHeight=480 >> settings.ini
)
) ELSE (
echo.[setting] >> settings.ini
echo.ResolutionWidth=640>> settings.ini
echo.ResolutionHeight=480>> settings.ini
)


for /f "tokens=1,2 delims==" %%a in (settings.ini) do (
if %%a==ResolutionWidth set ResolutionWidth=%%b
if %%a==ResolutionHeight set ResolutionHeight=%%b
)
 
echo 目前視窗寬度值=%ResolutionWidth%px
echo 目前視窗高度值=%ResolutionHeight%px


set /p width=改變視窗寬度為:
set /p height=改變視窗高度為:

set /a wTest=width*1
set /a hTest=height*1


if %wTest% GTR 0 (
call:edit "settings.ini" "ResolutionWidth=" "ResolutionWidth=%width%"
) else (
call:edit "settings.ini" "ResolutionWidth=" "ResolutionWidth=640"
)

if %hTest% GTR 0 (
call:edit "settings.ini" "ResolutionHeight=" "ResolutionHeight=%height%"
) else (
call:edit "settings.ini" "ResolutionHeight=" "ResolutionHeight=480"
)


echo 設定值已更改!!
echo ======================================
echo ======================================

goto start


:edit
for /f "tokens=1* delims=:" %%i in ('findstr /n ".*" %1') do (
    if "%%j"=="" (echo.>>tmp) else (
          echo %%j|find %2>nul&&(call echo %~3>>tmp)||(echo %%j>>tmp)
    )
)

copy tmp %1 /y >nul&&del tmp
