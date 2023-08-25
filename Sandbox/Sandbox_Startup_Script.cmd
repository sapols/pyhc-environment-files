REM Install requrements packages
set scriptpath=C:\users\WDAGUtilityAccount\Desktop\pyhc-environment-files\Sandbox\

REM install requrements and create enviroment 
call %scriptpath%Sandbox_install_requrements.cmd
call %scriptpath%Sandbox_python_env.cmd

REM install pyhc packages
start cmd /k %scriptpath%Sandbox_python_install_pyhc.cmd