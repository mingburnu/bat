@echo off
java -jar aspchecker.jar
:back
SET /P _input= EXIT(y/N):
IF "%_input%"=="Y" ( EXIT /B ) ELSE IF "%_input%"=="y" ( EXIT /B ) ELSE ( GOTO back )