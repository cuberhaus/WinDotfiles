function ycm_dependancies {
    choco install cmake --installargs 'ADD_CMAKE_TO_PATH=System' # cmake
    choco install golang
    choco install nodejs # npm
    choco install visualstudio2017buildtools
}
### Installation starts here
ycm_dependancies # Installs dependancies
cd ~\.vim\plugged\YouCompleteMe\
python3 install.py --all
