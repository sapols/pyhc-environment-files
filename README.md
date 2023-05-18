# pyhc-environment-files

Repo with files trying to generate one virtual Python environment that can import every PyHC package.

## Steps:
1. `pip install -r pyhc-requirements.txt`
2. `pip install -r pyhc-packages-requirements.txt`
3. `python3 import-test.py` 

### Notes:
#### Fixing ocbpy:
##### Problem: 
It's failing on trying to get SpacePy to load the CDF C library
##### Solution: 
Install CDF C library (see: https://spacepy.github.io/pycdf.html)

### Ideas: 
Similar to how Kamodo-CCMC has a few test lines to verify the installation:

```
from kamodo import Kamodo
k = Kamodo()  
import kamodo_ccmc.flythrough.model_wrapper as MW  
MW.Model_Variables('OpenGGCM_GM')
```

We should make a test file that has similar lines for ALL packages.
