@echo off
title Maven Install Project
color F2
setlocal
set EXEC=call mvn -B -e --settings D:\tools\maven\settings.xml clean install -Dmaven.test.skip=true
echo %EXEC%
%EXEC%
endlocal
pause
