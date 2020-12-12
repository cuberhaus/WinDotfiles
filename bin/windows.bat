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
Install-Module git-aliases -Scope CurrentUser -AllowClobber
Rem https://github.com/gluons/powershell-git-aliases
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

Rem chocolatey, do NOT add comments to choco

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
Rem choco install intellijidea-community -y
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

Rem choco install autoruns -y       Rem What programs are configured to startup automatically
Rem choco install chocolateygui -y  Rem A gui for chocolatey package manager
Rem choco install chromium -y       Rem Open source Web browser
Rem choco install eclipse -y        Rem java/SQL IDE // doesnt quite work properly??
Rem choco install firefox -y        Rem Open source web browser
Rem choco install git-lfs -y
Rem choco install jdk8              Rem java v8
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
