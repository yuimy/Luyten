@echo off
title �Զ����
color F2
REM ���ļ��豣��ΪANSI���룬������Windows��ִ��
REM rem------------��ʾ��ע�ͣ��൱��Java�е�//
REM @echo off------��ʾ�رջ��ԣ�������ʾ���м������������(Ĭ��DOS��̻��������ʾ����)
REM color----------����Ϊ02��ʾDOS���ڱ���Ϊ��ɫ��ǰ��(������)Ϊ��ɫ
REM xcopy----------�������/Y��ʾ�Զ�����ͬ���ļ�(�������DOS����ѯ��Y����N)
REM del------------ɾ���ļ����/S����ɾ��Ŀ¼��(��ɾ��Ŀ¼��Ŀ¼�µ�������Ŀ¼���ļ�)��/Q��ʾȷ��Ҫɾ��(����DOS����ʾ�û��Ƿ�ȷ��ɾ��)
REM rd-------------ɾ���ļ������/S��/Q������del����ĺ�����ͬ
REM ren------------�������ļ����÷���[ren 11.exe 22.exe]
setlocal
echo =================================

REM mvn -B -e clean install -Dmaven.test.skip=true
set EXEC=call mvn -B -e --settings D:\tools\maven\settings.xml clean install -Dmaven.test.skip=true
echo %EXEC%
%EXEC%

rem echo;
endlocal

pause
