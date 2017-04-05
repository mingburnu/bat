For /f "tokens=1-3 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
set dest="D:\backup\BackupAll.%mydate%"
robocopy "C:\output" %dest% /E
