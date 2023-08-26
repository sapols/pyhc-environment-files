REM Install gfortran using msys2
set installpath=C:\users\WDAGUtilityAccount\Desktop\Downloads\

REM Install MSYS
%installpath%msys2-x86_64-20230718.exe install --confirm-command --accept-messages --root C:/msys64

REM Run for the first time
C:\msys64\usr\bin\bash -lc " " 
REM Update MSYS2
REM # Core update (in case any core packages are outdated)
C:\msys64\usr\bin\bash -lc "pacman --noconfirm -Syuu"  
REM # Normal update
C:\msys64\usr\bin\bash -lc "pacman --noconfirm -Syuu"  

REM Install gfortran
REM C:\msys64\usr\bin\bash -lc "pacman -Sy base-devel mingw-w64-x86_64-binutils mingw-w64-x86_64-crt-git mingw-w64-x86_64-gcc mingw-w64-x86_64-gcc-ada mingw-w64-x86_64-gcc-fortran mingw-w64-x86_64-gcc-libgfortran mingw-w64-x86_64-gcc-libs mingw-w64-x86_64-gcc-objc mingw-w64-x86_64-libgccjit mingw-w64-x86_64-gdb mingw-w64-x86_64-gdb-multiarch mingw-w64-x86_64-headers-git mingw-w64-x86_64-libmangle-git mingw-w64-x86_64-libwinpthread-git mingw-w64-x86_64-winpthreads-git mingw-w64-x86_64-make mingw-w64-x86_64-pkgconf mingw-w64-x86_64-tools-git mingw-w64-x86_64-winstorecompat-git"
C:\msys64\usr\bin\bash -lc "pacman -Sy --noconfirm base-devel mingw-w64-x86_64-toolchain"

REM Add installed folder to the path
setx /M path C:\msys64\mingw64\bin\;%path%