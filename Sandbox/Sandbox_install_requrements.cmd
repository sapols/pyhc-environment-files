REM This script install nesseary dependensies to install PyHC
set installpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\
set scriptpath=C:\users\WDAGUtilityAccount\Desktop\pyhc-environment-files\Sandbox\
                                                   
REM Install minial requrements
call %scriptpath%Sandbox_install_minimal_requrements.cmd

REM Install "Visual Studio 2022 Build Tools"
%installpath%vs_buildtools.exe --quiet

REM Install the rest of the packages
call %scriptpath%Sandbox_install_fortran_via_msys2.cmd
call %scriptpath%Sandbox_install_libfftw.cmd
call %scriptpath%Sandbox_install_HOME.cmd
call %scriptpath%Sandbox_install_cdf.cmd

@REM Install and run VSCode (disabled)
@REM %installpath%vscode.exe /verysilent /suppressmsgboxes /close
