@echo off
SET THEFILE=PyWork.exe
echo Linking %THEFILE%
c:\codetyphon\fpc\fpc64\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o PyWork.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
