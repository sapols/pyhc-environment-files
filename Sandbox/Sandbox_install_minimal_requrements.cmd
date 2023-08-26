REM This script install nesseary dependensies to install PyHC
set installpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\

REM Install Python
%installpath%python-3.10.11-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

REM Set Enviroment Variables for Python
setx path "C:\Program Files\Python310;%path%" /M 

REM Install GIT
%installpath%Git-2.42.0-64-bit.exe /SILENT /NOCANCEL /SP- /COMPONENTS="!icons,!ext,!assoc,!assoc_sh"

REM Install "Desktop development with C++"
%installpath%VC_redist.x64.exe /q /norestart