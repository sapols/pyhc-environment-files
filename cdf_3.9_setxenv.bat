REM This script sets environment variables for CDF 3.9 and must be executed from the CDF Software directory.

if not exist "setenv.bat" (
  echo "Execute this script from CDF Software directory, e.g., C:\Program Files\CDF_Distribution\cdf39_0-dist."
  exit /b
)

set mydir=%~dp0
setx CDF_BASE "%mydir%"
setx CDF_INC "%mydir%include"
setx CDF_LIB "%mydir%lib"
setx CDF_HELP "%mydir%help"
setx CDF_LEAPSECONDSTABLE "%mydir%CDFLeapSeconds.txt"
setx CLASSPATH "%mydir%CDFToolsDriver.jar;%mydir%lib\\cdfjava.jar;%mydir%lib\\cdfml.jar;%mydir%lib\\cdfjson.jar;%mydir%lib\\cdfj.jar;%mydir%lib\\gson-2.8.6.jar;%mydir%lib\\javax.json-1.0.4.jar;."
setx PATH "%mydir%;%mydir%bin;%PATH%"
setx TERMINFO "%mydir%lib\\terminfo"
setx JAVA_TOOL_OPTIONS "-Dfile.encoding=UTF8"