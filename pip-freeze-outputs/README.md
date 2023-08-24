# pip-freeze-outputs

This directory holds `pip freeze` outputs from successful environments.

## pip-freeze-shawn.txt:
This was generated from an environment where `import-test.py` succeeded with EVERY package uncommented. It also included three extra (recently-added) packages `CCSDSPy`, `space-packet-parser`, and `regularizePSF` which at the time of writing are missing from `pyhc-packages-requirements.txt`. Shawn's environment was macOS 11.7.4 (Intel i7 processor) running Python v3.8.8. The only caveats were that 1) `ocbpy` only imports if the CDF C library is installed on the system, and 2) `wmm2015`/`wmm2020` only import if CMake is installed on the system.