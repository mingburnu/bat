@Echo Off
Title 長陽城驛站 & Color 1A
cd %systemroot%\system32
call :IsAdmin

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

if %OS%==32BIT (
Reg.exe add "HKLM\SOFTWARE\SoftStar\SwdOnline" /v "swdmd" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SOFTWARE\SoftStar\SwdMD\TW" /v "online" /t REG_SZ /d "y" /f
Reg.exe add "HKLM\SOFTWARE\SoftStar\SwdMD\TW" /v "swdonline" /t REG_DWORD /d "1" /f
)

if %OS%==64BIT (
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\SoftStar\SwdMD\TW" /v "swdonline" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\SoftStar\SwdMD\TW" /v "online" /t REG_SZ /d "y" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\SoftStar\SwdOnline" /v "swdmd" /t REG_SZ /d "1" /f
)

echo 長陽城已到達。

:back
SET /P _input= EXIT(y/N):
IF "%_input%"=="Y" ( EXIT /B ) ELSE IF "%_input%"=="y" ( EXIT /B ) ELSE ( GOTO back )

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
