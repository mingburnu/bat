@Echo Off
:back
echo "0.compmgmt 1.taskmgr 2.taskschd 3.services 4.secpol 5.gpedit 6.regedit 7.msconfig"
SET /P _input= 
IF "%_input%"=="0" ( compmgmt ) ELSE IF "%_input%"=="1" ( taskmgr ) ELSE IF "%_input%"=="2" ( taskschd ) ELSE IF "%_input%"=="3" ( services ) ELSE IF "%_input%"=="4" ( secpol ) ELSE IF "%_input%"=="5" ( gpedit ) ELSE IF "%_input%"=="6" ( regedit ) ELSE IF "%_input%"=="7" ( msconfig ) ELSE ( echo "please input correct number" )
GOTO back
