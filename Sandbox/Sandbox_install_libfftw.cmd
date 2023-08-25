REM install fftw

REM Unpack library 
set downloadpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\
set libfftw3path=C:\libfftw\
mkdir %libfftw3path%
tar -xf %downloadpath%fftw-3.3.5-dll64.zip -C %libfftw3path%

REM Install library
start /wait %comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\VsDevCmd.bat & ^
lib /def:libfftw3-3.def /machine:x64 & ^
lib /def:libfftw3f-3.def /machine:x64 & ^
lib /def:libfftw3l-3.def /machine:x64 & exit"

REM Add to path
setx /M path "%path%;%libfftw3path%"