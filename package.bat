@echo off
title Maven Deploy Project
color F2
setlocal
set EXEC=call mvn -B -e --settings D:\tools\maven\settings.xml clean package -Dmaven.test.skip=true
echo %EXEC%
%EXEC%
endlocal
pause
