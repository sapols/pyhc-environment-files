REM This script install nesseary dependensies to install PyHC
set installpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\
set scriptpath=C:\users\WDAGUtilityAccount\Desktop\pyhc-environment-files\Sandbox\
                                                   
REM Install minial requrements
call %scriptpath%Sandbox_install_minimal_requrements.cmd

REM Update enviroment
call %scriptpath%RefreshEnv.cmd

REM Install "Visual Studio 2022 Build Tools"
%installpath%vs_buildtools.exe --passive --includeRecommended --add Microsoft.VisualStudio.Product.BuildTools --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.Microsoft.VisualStudio.Component.Windows10SDK.20348 --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64

REM Install the rest of the packages
call %scriptpath%Sandbox_install_fortran_via_msys2.cmd
call %scriptpath%Sandbox_install_libfftw.cmd
call %scriptpath%Sandbox_install_HOME.cmd
call %scriptpath%Sandbox_install_cdf.cmd

@REM Install and run VSCode (disabled)
@REM %installpath%vscode.exe /verysilent /suppressmsgboxes /close
