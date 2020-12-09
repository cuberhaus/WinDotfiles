CALL :windows_install Rem Installs dependancies
cd ~\.vim\plugged\YouCompleteMe\
python3 install.py --all
EXIT /B %ERRORLEVEL%

:windows_install
    choco install cmake --installargs 'ADD_CMAKE_TO_PATH=System' Rem cmake
    choco install golang
    choco install nodejs Rem npm
    choco install visualstudio2017buildtools
EXIT /B 0
