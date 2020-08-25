@echo off
title 自动打包
color F2
REM 此文件需保存为ANSI编码，方可在Windows下执行
REM rem------------表示行注释，相当于Java中的//
REM @echo off------表示关闭回显，即不显示本行即下面的命令行(默认DOS编程会把命令显示出来)
REM color----------设置为02表示DOS窗口背景为黑色，前景(即字体)为绿色
REM xcopy----------拷贝命令，/Y表示自动覆盖同名文件(否则会在DOS窗口询问Y还是N)
REM del------------删除文件命令，/S用于删除目录树(即删除目录及目录下的所有子目录和文件)，/Q表示确认要删除(否则DOS会提示用户是否确认删除)
REM rd-------------删除文件夹命令，/S和/Q含义与del命令的含义相同
REM ren------------重命名文件，用法：[ren 11.exe 22.exe]
setlocal
echo =================================

REM mvn -B -e clean install -Dmaven.test.skip=true
set EXEC=call mvn -B -e --settings D:\tools\maven\settings.xml clean install -Dmaven.test.skip=true
echo %EXEC%
%EXEC%

rem echo;
endlocal

pause
