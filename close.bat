@ECHO OFF
shutdown /s
:back
SET /P _input= ��������(y/N):
IF "%_input%"=="Y" ( shutdown /a ) ELSE IF "%_input%"=="y" ( shutdown /a) ELSE ( GOTO back ) 
