REM Install requrements packages
set scriptpath=C:\users\WDAGUtilityAccount\Desktop\pyhc-environment-files\Sandbox\

REM install requrements and create enviroment 
start /wait cmd /k "%scriptpath%Sandbox_install_requrements.cmd & exit"

REM Refresh eniroment after installation
call %scriptpath%RefreshEnv.cmd

REM Create pyhc enviroment
start /wait cmd /k "%scriptpath%Sandbox_python_env.cmd & exit"

REM Install pyhc packages
start cmd /k "%scriptpath%Sandbox_python_install_pyhc.cmd"