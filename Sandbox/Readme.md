# Sandbox
This is a collection of scripts that execute automatic Sanbox enviroment

## .wsb
.wsb files are Sandbox configurations, double click to start Sanbox

- Sandbox Test PyHC.wsb
-- Main Sandbox configuration file.
- Sandbox Test PyHC Download.wsb
-- Download and install packages (could be outdated)
- Sandbox Test PyHC Basic.wsb
-- Bare minimum to start Sanbox with python, git and VC_redist.x64

Configuration operates with readonly  folders that are available within Sandbox. 
- pyhc-environment-files 
-- This project folder
- Downloads
-- Folder where requred installation packages are located

## .cmd
Several scripts that automatically download, install and execute programs and tools that are neede for PyHC

- Sandbox_Startup_Script.cmd
-- Startup script for Sandbox Test PyHC.wsb
- Sandbox_Startup_Script_Basic.cmd
-- Startup script for Sandbox Test PyHC Download.wsb
- Sandbox_Startup_Script_Download.cmd
-- Startup script for Sandbox Test PyHC Basic.wsb


- RefreshEnv.cmd
-- Script refresh enviromental variables without need to restart cmd

- Sandbox_download_requrements.cmd
-- Download requred packages to the folder specifyed by downloadpath variable

- Sandbox_install_minimal_requrements.cmd
-- Install python, git and VC_redist.x64
- Sandbox_install_requrements.cmd
-- Install all requrments for PyHC packages

- Sandbox_install_HOME.cmd
-- Set HOME enviromental variable
- Sandbox_install_cdf.cmd
-- Install CDF library
- Sandbox_install_fortran_via_msys2.cmd
-- Install msys2 and gfortran
- Sandbox_install_libfftw.cmd
-- Install libffw

- Sandbox_python_env.cmd
-- Create venv for pyhc
- Sandbox_python_install_pyhc.cmd
-- Install all PyHC packages 

