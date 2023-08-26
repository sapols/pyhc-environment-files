REM Install CDF library
set downloadpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\
msiexec /i "%downloadpath%cdf3.9.0_64bit_MS_Installer.msi" /qn

REM set enviromental variables
set mydir="C:\Program Files\CDF_Distribution\cdf39_0-dist\"
setx /M CDF_BASE %mydir%
setx /M CDF_INC %mydir%include
setx /M CDF_LIB %mydir%lib
setx /M CDF_HELP %mydir%help
setx /M CDF_LEAPSECONDSTABLE %mydir%CDFLeapSeconds.txt
setx /M CLASSPATH %mydir%CDFToolsDriver.jar;%mydir%lib\\cdfjava.jar;%mydir%lib\\cdfml.jar;%mydir%lib\\cdfjson.jar;%mydir%lib\\cdfj.jar;%mydir%lib\\gson-2.8.6.jar;%mydir%lib\\javax.json-1.0.4.jar;.

setx /M PATH %PATH%;%mydir%;%mydir%bin

setx /M TERMINFO %mydir%lib\\terminfo
setx /M JAVA_TOOL_OPTIONS "-Dfile.encoding=UTF8"
