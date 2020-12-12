### DO THIS FIRST
# Set-ExecutionPolicy #oteSigned 

# uncap location
$uncap=~\WinDotfiles\dotfiles\uncap.exe

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
    mv $uncap C:\Windows\
    #Swap caps with escape https://github.com/susam/uncap#readme
}

function windows_install{
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
    # https://github.com/gluons/powershell-git-aliases
    Install-Module PSWindowsUpdate
    Get-WindowsUpdate
    Install-WindowsUpdate

    # Chocolatey install
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    # Chocolatey packages
    choco install 7zip.install -y   # Archiver
    choco install adobereader -y 	# Pdf viewer
    choco install audacity          # Audio editor
    choco install autohotkey.portable -y # Automation software
    choco install calibre -y        # Books manager
    choco install ccleaner -y 	    # Cleanup
    choco install curl -y 		    # cUrL is a command line tool and library for transferring data with URLs
    choco install discord -y        # Discord
    choco install fzf -y            # Fuzzy finder
    choco install gimp -y           # Photoshop
    choco install git.install -y    # Git
    choco install googlechrome -y	# Web browser
    #choco install intellijidea-community # Free version java IDE
    choco install intellijidea-ultimate # Paid version with sql IDE
    choco install linkshellextension -y # Make links from explorer
    choco install malwarebytes -y   # Anti-virus
    choco install microsoft-windows-terminal -y	# Windows terminal
    choco install obs-studio -y     # Record screen in windows, works with internal audio better than mac
    choco install openjdk -y           # open source java development kit
    choco install openssh -y	    # SSH client
    choco install poshgit -y        # git bar
    choco install powershell-core -y # Updated powershell
    choco install python -y         
    choco install r.project -y      # Probabilitat i estadística
    choco install r.studio -y       # Probabilitat i estadística IDE
    choco install rufus -y          # burn iso's on usb
    choco install skype -y		    # Skype
    choco install spotify -y        # Spotify
    choco install strawberryperl -y
    choco install telegram -y       # Telegram
    choco install thunderbird -y    # Email client
    choco install toastify -y 		# Toastify adds some missing functionallity to the Spotify client.
    choco install transmission -y   # Simple torrent client
    choco install vlc -y		    # Media player
    choco install vscode -y         # GUI Editor
    choco install wget -y		    # A command-line utility for retrieving files using HTTP protocols
    choco install windirstat -y
    choco install wsl2 -y           # Windows subsystem for linux 2
    choco install yarn -y           # Packages

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

    # office?
    #Deezloader #ix?
    #Maple
}

function games_install {
    choco install goggalaxy -y
    choco install leagueoflegends -y
    choco install steam -y
}

## Start Installation
windows_install
vim_install
cd "$dotfiles/bin/"
# Run ycm.ps1 script
.\ycm.ps1
#swap
