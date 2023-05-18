# pyhc-environment-files

Repo with files trying to generate one virtual Python environment that can import every PyHC package.

## Steps:
1. `pip install -r pyhc-requirements.txt`
2. `pip install -r pyhc-packages-requirements.txt`
3. `python3 import-test.py` 

#### Fixing ocbpy import (currently commented-out):
##### Problem: 
It's failing on trying to get SpacePy to load the CDF C library
##### Solution: 
Install CDF C library (see: https://spacepy.github.io/pycdf.html / https://spacepy.github.io/install_mac.html#install-mac-cdf)
###### Shawn's steps:
 - Download Mac binaries "CDF3_9_0-binary-signed.pkg" (from: https://spdf.gsfc.nasa.gov/pub/software/cdf/dist/latest-release/macosx/)
 - Install via the installer
 - Uncomment `import ocbpy` in `import-test.py` because it now works!

#### Fixing wmm2015 & wmm2020 imports (currently commented-out):
##### Problem: 
"FileNotFoundError: CMake not available"
##### Solution: 
Install CMake?
###### Shawn's steps:
 - `brew install cmake`
 - ??? (Still failed after running that command; giving up)


### Notes:
 - Shawn's environment is macOS 11.7.4 (Intel i7 processor) running Python v3.8.8
 - Very recently added PyHC packages not included here:
   - CCSDSPy (requirements already satisfied)
   - space-packet-parser (would install bitstring-4.0.2)
   - regularizePSF project  

### Ideas: 
Similar to how Kamodo-CCMC has a few test lines to verify the installation:

```
from kamodo import Kamodo
k = Kamodo()  
import kamodo_ccmc.flythrough.model_wrapper as MW  
MW.Model_Variables('OpenGGCM_GM')
```

We should make a test file that has similar lines for ALL packages.
