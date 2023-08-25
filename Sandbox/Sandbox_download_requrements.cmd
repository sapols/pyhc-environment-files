REM This script downloads and install nesseary dependensies to install PyHC
set downloadpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\

REM Download Python
curl -L "https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe" --output "%downloadpath%python-3.10.11-amd64.exe"

REM Download GIT
curl -L "https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.1/Git-2.42.0-64-bit.exe" --output "%downloadpath%Git-2.42.0-64-bit.exe"

REM Download "Desktop development with C++"
curl -L "https://aka.ms/vs/17/release/VC_redist.x64.exe" --output "%downloadpath%VC_redist.x64.exe"

REM Download "Visual Studio 2022 Build Tools"
curl -L "https://aka.ms/vs/17/release/vs_buildtools.exe" --output "%downloadpath%vs_buildtools.exe"

REM Download "precompiled FFTW Windows DLLs"
curl -L "https://fftw.org/pub/fftw/fftw-3.3.5-dll64.zip" --output "%downloadpath%fftw-3.3.5-dll64.zip"

REM Download "CDF software"
curl -L "https://spdf.gsfc.nasa.gov/pub/software/cdf/dist/latest/windows/cdf3.9.0_64bit_MS_Installer.msi" --output "%downloadpath%cdf3.9.0_64bit_MS_Installer.msi"

REM Download MSYS
curl -L "https://github.com/msys2/msys2-installer/releases/download/2023-07-18/msys2-x86_64-20230718.exe" --output "%downloadpath%msys2-x86_64-20230718.exe"

REM Download VSCode
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output "%downloadpath%vscode.exe"
