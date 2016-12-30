@echo off
java -jar dtsv3job.jar
:back
SET /P _input= EXIT(y/N):
IF "%_input%"=="Y" ( EXIT /B ) ELSE IF "%_input%"=="y" ( EXIT /B ) ELSE ( GOTO back )