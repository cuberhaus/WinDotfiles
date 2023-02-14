### EXECUTE THIS COMMAND FIRST
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
$dotfiles = "C:\Users\polcg\WinDotfiles\"
$uncap = "$dotfiles\uncap.exe" # uncap location
$documents = "Documents"

$sourceLinks = "$HOME\_vimrc", "$HOME\$documents\PowerShell\profile"
$links = "$dotfiles\_vimrc", "$dotfiles\$documents\PowerShell\profile"

function linking {
    mkdir $HOME\$documents\PowerShell
    mkdir $HOME\$documents\WindowsPowerShell
    # $sym = ".symlink"
    For($i=0; $i -lt $sourceLinks.Length; $i++) {
        # if (Test-Path $sourceLinks[$i]) {
        #     Remove-Item $sourceLinks[$i]
        # }
        $link = $links[$i]
        New-Item -Path $sourceLinks[$i] -ItemType SymbolicLink -Value $link -Name $sourceLinks[$i]
    }
}

function base_install {
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
    # https://github.com/gluons/powershell-git-aliases

    # Command-line windows update
    Install-Module PSWindowsUpdate
    Get-WindowsUpdate
    Install-WindowsUpdate

    # Chocolatey install
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    choco install 7zip.install -y   # Archiver
    choco install curl -y 		    # Curl is a command line tool and library for transferring data with URLs
    choco install fzf -y            # Fuzzy finder
    choco install git.install -y    # Git
    choco install googlechrome -y	# Web browser
    choco install linkshellextension -y # Make links from explorer
    choco install openssh -y	    # SSH client
    choco install poshgit -y        # git bar
    choco install powershell-core -y # Updated powershell
    choco install python -y         # python
    choco install rclone -y         # Git but without version control
    choco install strawberryperl -y # Pearl
    choco install wget -y		    # A command-line utility for retrieving files using HTTP protocols
    choco install yarn -y           # Packages, need it for vim
    choco install make -y           # makefiles
    choco install zip -y            # zip from terminal
}

function emacs {
    # Add environment variable HOME to C:\Users\polcg\
    # Add $HOME\.emacs.d\bin\doom to path
    # personal config not working yet on windows
    # choco install emacs -y          # Editor 
    # choco install git ripgrep llvm fd hunspell.portable -y
}

function full_install {
    choco install calibre -y        # Books manager
    choco install ccleaner -y 	    # Cleanup
    choco install choco-cleaner -y
    choco install discord -y        # Discord
    choco install malwarebytes -y   # Anti-virus
    choco install mobaxterm         # PAR (makes wxparaver WORK)
    choco install rufus -y          # burn iso's on usb
    choco install spotify -y        # Spotify
    choco install thunderbird -y    # Email client
    choco install transmission -y   # Simple torrent client
    choco install vlc -y		    # Media player
    choco install vscode -y         # GUI Editor
    choco install windirstat -y     # View file sizes in system to clean up space
    choco install geforce-experience -y 
}

function optional {
    # Probably
    choco install adobereader -y 	# Pdf viewer
    choco install audacity -y       # Audio editor
    choco install autohotkey.portable -y # Automation software
    choco install autoruns -y       # What programs are configured to startup automatically
    choco install chocolateygui -y  # A gui for chocolatey package manager
    choco install chromium -y       # Open source Web browser
    choco install eclipse -y        # java/SQL IDE // doesnt quite work properly??
    choco install firefox -y        # Open source web browser
    choco install gimp -y           # Photoshop
    choco install git-lfs -y
    choco install intellijidea-community -y# Free version java IDE
    choco install intellijidea-ultimate -y # Paid version with sql IDE
    choco install jdk8              # java v8
    choco install jre8 -y
    choco install libreoffice-still -y # Office suite
    choco install obs-studio -y     # Record screen in windows, works with internal audio better than mac
    choco install openjdk -y           # open source java development kit
    choco install putty -y
    choco install python2 -y // THIS BREAKS NEOVIM PYTHON
    choco install r.project -y      # Probabilitat i estadística
    choco install r.studio -y       # Probabilitat i estadística IDE
    choco install reflect-free -y   # backups
    choco install skype -y		    # Skype
    choco install slack -y          # Slack
    choco install teamviewer -y
    choco install telegram -y       # Telegram
    choco install toastify -y 		# Toastify adds some missing functionallity to the Spotify client.
    choco install virtualbox -y     # Virtualization tool
    choco install wireshark -y
    choco install wsl2 -y           # Windows subsystem for linux 2
    #Garbage
}

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
    # NEED TO ADD COMMAND TO INSTALL PLUGINS ONCE VIM IS INSTALLED
}

function swap {
    cp $uncap C:\Windows\
    # Swap caps with escape https://github.com/susam/uncap#readme
}

function games_install {
    # choco install goggalaxy -y
    # choco install leagueoflegends -y
    # choco install steam -y
}

## Start Installation
linking
#base_install
#full_install
#vim_install
#cd "$dotfiles/bin/"
#.\ycm.ps1

#swap
