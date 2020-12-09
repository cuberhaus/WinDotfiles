Rem uncap location
set uncap=~\WinDotfiles\dotfiles\uncap.exe 

CALL :windows_install
CALL :vim_install
cd "~\dotfiles\.local\bin\
CALL ycm.bat
CALL :swap
REM CALL :games_install
EXIT /B %ERRORLEVEL% 

:vim_install
choco install vim -y
choco install neovim -y
Rem vim plug neovim
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force

Rem vim plug for PowerShell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

npm install -g neovim Rem npm

gem install neovim Rem gem environments

pip install --upgrade neovim Rem Python3
EXIT /B 0

:swap
mv %uncap% C:\Windows\
Rem Swap caps with escape https://github.com/susam/uncap#readme
EXIT /B 0

:windows_install
Install-Module git-aliases -Scope CurrentUser -AllowClobber Rem https://github.com/gluons/powershell-git-aliases
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

Rem chocolatey 

choco install 7zip.install -y   Rem Archiver
choco install adobereader -y 	Rem Pdf viewer
choco install atom -y           Rem GUI Editor
choco install audacity          Rem Audio editor
choco install autohotkey.portable -y Rem Automation software
choco install calibre -y        Rem Books manager
choco install ccleaner -y 	    Rem Cleanup
choco install curl -y 		    Rem cUrL is a command line tool and library for transferring data with URLs
choco install discord -y        Rem Discord
choco install fzf -y            Rem Fuzzy finder
choco install gimp -y           Rem Photoshop
choco install git.install -y    Rem Git
choco install googlechrome -y	Rem Web browser
choco install linkshellextension -y Rem Make links from explorer
choco install malwarebytes -y   Rem Anti-virus
choco install microsoft-windows-terminal -y	Rem Windows terminal
choco install obs-studio -y     Rem Record screen in windows, works with internal audio better than mac
choco install openssh -y	    Rem SSH client
choco install poshgit -y        Rem git bar
choco install powershell-core -y Rem Updated powershell
choco install python -y         
choco install r.project -y      Rem Probabilitat i estadística
choco install r.studio -y       Rem Probabilitat i estadística IDE
choco install rufus -y          Rem burn iso's on usb
choco install skype -y		    Rem Skype
choco install spotify -y        Rem Spotify
choco install strawberryperl -y
choco install telegram -y       Rem Telegram
choco install thunderbird -y    Rem Email client
choco install toastify -y 		Rem Toastify adds some missing functionallity to the Spotify client.
choco install transmission -y   Rem Simple torrent client
choco install vlc -y		    Rem Media player
choco install vscode -y         Rem GUI Editor
choco install wget -y		    Rem A command-line utility for retrieving files using HTTP protocols
choco install windirstat -y
choco install wsl2 -y           Rem Windows subsystem for linux 2
choco install yarn -y           Rem Packages
Rem choco install autoruns -y		Rem What programs are configured to startup automatically
Rem choco install chocolateygui -y  Rem A gui for chocolatey package manager
Rem choco install chromium -y 	    Rem Open source Web browser
Rem choco install firefox -y        Rem Open source web browser
Rem choco install git-lfs -y
Rem choco install jre8 -y
Rem choco install python2 -y // THIS BREAKS NEOVIM PYTHON
Rem choco install slack -y        Rem Slack
Rem choco install teamviewer -y
Rem choco install virtualbox -y
EXIT /B 0

Rem office?
Rem Deezloader Remix?
Rem Maple

:games_install
choco install goggalaxy -y
choco install leagueoflegends -y
choco install steam -y
EXIT /B 0
