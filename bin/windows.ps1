## uncap location
#set uncap=~\WinDotfiles\dotfiles\uncap.exe

function vim_install {
    choco install vim -y
    choco install neovim -y
    #vim plug neovim
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force

    #vim plug for PowerShell
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

    npm install -g neovim #npm

    gem install neovim # gem environments

    pip install --upgrade neovim # Python3
}

function swap {
    mv %uncap% C:\Windows\
    #Swap caps with escape https://github.com/susam/uncap#readme
}

function windows_install{
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
    # https://github.com/gluons/powershell-git-aliases
    Install-Module PSWindowsUpdate
    Get-WindowsUpdate
    Install-WindowsUpdate
    choco install 7zip.install -y
    choco install adobereader -y
    choco install atom -y
    choco install audacity
    choco install autohotkey.portable -y
    choco install calibre -y
    choco install ccleaner -y
    choco install curl -y
    choco install discord -y
    choco install fzf -y
    choco install gimp -y
    choco install git.install -y
    choco install googlechrome -y
    # choco install intellijidea-community -y
    choco install intellijidea-ultimate-y
    choco install linkshellextension -y
    choco install malwarebytes -y
    choco install microsoft-windows-terminal -y
    choco install obs-studio -y
    choco install openjdk -y
    choco install openssh -y
    choco install poshgit -y
    choco install powershell-core -y
    choco install python -y
    choco install r.project -y
    choco install r.studio -y
    choco install rufus -y
    choco install skype -y
    choco install spotify -y
    choco install strawberryperl -y
    choco install telegram -y
    choco install thunderbird -y
    choco install toastify -y
    choco install transmission -y
    choco install vlc -y
    choco install vscode -y
    choco install wget -y
    choco install windirstat -y
    choco install wsl2 -y
    choco install yarn -y

    # choco install autoruns -y       # What programs are configured to startup automatically
    # choco install chocolateygui -y  # A gui for chocolatey package manager
    # choco install chromium -y       # Open source Web browser
    # choco install eclipse -y        # java/SQL IDE // doesnt quite work properly??
    # choco install firefox -y        # Open source web browser
    # choco install git-lfs -y
    # choco install jdk8              # java v8
    # choco install jre8 -y
    # choco install python2 -y // THIS BREAKS NEOVIM PYTHON
    # choco install slack -y        # Slack
    # choco install teamviewer -y
    # choco install virtualbox -y

}
# office?
#Deezloader #ix?
#Maple

function games_install {
    choco install goggalaxy -y
    choco install leagueoflegends -y
    choco install steam -y
}

windows_install
#vim_install
#cd "~\dotfiles\.local\bin\"
#ycm.bat
#swap

