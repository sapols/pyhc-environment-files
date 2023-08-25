REM Minimal python sandbox
set scriptpath=C:\users\WDAGUtilityAccount\Desktop\pyhc-environment-files\Sandbox\

start /wait cmd /k "%scriptpath%Sandbox_install_minimal_requrements.cmd & exit"

call %scriptpath%RefreshEnv.cmd

REM start console
start