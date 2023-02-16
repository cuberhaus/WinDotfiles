### EXECUTE THIS COMMAND FIRST
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
$dotfiles = "C:\Users\polcg\WinDotfiles\"
$uncap = "$dotfiles\uncap.exe" # uncap location
$documents = "Documents"

$sourceLinks = "$HOME\_vimrc", "$HOME\$documents\PowerShell\profile.ps1"
$links = "$dotfiles\_vimrc", "$dotfiles\$documents\PowerShell\profile.ps1"

# Think about adding winget

function linking {
    mkdir $HOME\Documents\PowerShell
    mkdir $HOME\Documents\WindowsPowerShell
    Remove-Item $HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    mkdir $HOME\AppData\Local\nvim
    For($i=0; $i -lt $sourceLinks.Length; $i++) {
        # if (Test-Path $sourceLinks[$i]) {
        #     Remove-Item $sourceLinks[$i]
        # }
        $link = $links[$i]
        New-Item -Path $sourceLinks[$i] -ItemType SymbolicLink -Value $link -Name $sourceLinks[$i]
    }
    cmd /c mklink C:\Users\polcg\Documents\PowerShell\profile.ps1 C:\Users\polcg\WinDotfiles\Documents\PowerShell\profile.ps1
    cmd /c mklink C:\Users\polcg\Documents\WindowsPowerShell\profile.ps1 C:\Users\polcg\WinDotfiles\Documents\PowerShell\profile.ps1
    cmd /c mklink C:\Users\polcg\AppData\Local\nvim\init.vim C:\Users\polcg\WinDotfiles\AppData\Local\nvim\init.vim
    cmd /c mklink C:\Users\polcg\_vimrc C:\Users\polcg\WinDotfiles\_vimrc
}
# https://stackoverflow.com/questions/73485958/how-to-correct-git-reporting-detected-dubious-ownership-in-repository-withou
# git config --global safe.directory '*'
function base_install {
    #https://lilinguas.com/es/error-de-powershell-el-archivo-no-est%C3%A1-firmado-digitalmente/
    Set-ExecutionPolicy unrestricted
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
    # https://github.com/gluons/powershell-git-aliases

    # Command-line windows update
    Install-Module PSWindowsUpdate
    Get-WindowsUpdate
    Install-WindowsUpdate
    # Enable developer mode https://www.ntweekly.com/2022/04/05/how-to-enable-developer-mode-on-windows-11-using-powershell/
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
    # Chocolatey install
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    choco install 7zip.install -y   # Archiver
    choco install curl -y 		    # Curl is a command line tool and library for transferring data with URLs
    choco install fzf -y            # Fuzzy finder
    choco install git.install -y    # Git
    choco install googlechrome -y	# Web browser
    choco install linkshellextension -y # Make links from explorer
    choco install make -y           # makefiles
    choco install nirlauncher -y    # have gui for sysinternals (MUST GO FIRST)
    choco install openssh -y	    # SSH client
    choco install poshgit -y        # git bar
    choco install powershell-core -y # Updated powershell
    choco install python -y         # python
    choco install rclone -y         # Git but without version control
    choco install strawberryperl -y # Pearl
    choco install wget -y		    # A command-line utility for retrieving files using HTTP protocols
    choco install yarn -y           # Packages, need it for vim
    choco install zip -y            # zip from terminal
}

function linux {
    wsl --install
    #wsl --set-default-version 2
}

function emacs {
    # Add environment variable HOME to C:\Users\polcg\
    # Add $HOME\.emacs.d\bin\doom to path
    # personal config not working yet on windows
    # choco install emacs -y          # Editor
    # choco install git ripgrep llvm fd hunspell.portable -y
}

function full_install {
    choco install autohotkey.portable -y # Automation software
    choco install calibre -y        # Books manager
    choco install ccleaner -y 	    # Cleanup
    choco install choco-cleaner -y  # Delete caches from chocolatey
    choco install discord -y        # Discord
    choco install geforce-experience -y # Nvidia card updates
    choco install gimp -y           # Photoshop
    choco install malwarebytes -y   # Anti-virus
    choco install mobaxterm -y        # PAR (makes wxparaver WORK)
    choco install openjdk -y        # open source java development kit
    choco install powertoys -y      # Powertoys!
    choco install rufus -y          # burn iso's on usb
    choco install spotify -y        # Spotify
    choco install sysinternals --params "/Sysinternals" -y # tools for windows
    choco install thunderbird -y    # Email client
    choco install transmission -y   # Simple torrent client
    choco install treesizefree -y     # view file sizes in system that clog memory
    choco install vlc -y		    # Media player
    choco install vscode -y         # GUI Editor
    choco install greenshot -y      # better screenshots
    # choco install autoruns -y       # What programs are configured to startup automatically
}

function optional {
    # Probably
    # choco install pswindowsupdate -y
    # choco install windirstat -y     # View file sizes in system to clean up space
    choco install adobereader -y 	# Pdf viewer
    choco install audacity -y       # Audio editor
    choco install chocolateygui -y  # A gui for chocolatey package manager
    choco install chromium -y       # Open source Web browser
    choco install cpu-z.install -y  # list pc infor
    choco install doxygen.install -y  # c++ documentation
    choco install eclipse -y        # java/SQL IDE // doesnt quite work properly??
    choco install firefox -y        # Open source web browser
    choco install git-lfs -y
    choco install intellijidea-community -y# Free version java IDE
    choco install intellijidea-ultimate -y # Paid version with sql IDE
    choco install jdk8 -y           # java v8
    choco install jre8 -y
    choco install libreoffice-still -y # Office suite
    choco install obs-studio -y     # Record screen in windows, works with internal audio better than mac
    choco install openjdk -y        # open source java development kit
    choco install pandoc -y         # universal document converter
    choco install procexp -y        # process explorer
    choco install putty -y
    choco install python2 -y // THIS BREAKS NEOVIM PYTHON
    choco install r.project -y      # Probabilitat i estadística
    choco install r.studio -y       # Probabilitat i estadística IDE
    choco install reflect-free -y   # backups
    choco install skype -y		    # Skype
    choco install slack -y          # Slack
    choco install sublimetext3 -y   # fast editor
    choco install teamviewer -y
    choco install telegram -y       # Telegram
    choco install toastify -y 		# Toastify adds some missing functionallity to the Spotify client.
    choco install tor-browser -y    # browse the web without restrictions and without being traced
    choco install virtualbox -y     # Virtualization tool
    choco install wireshark -y
    
    # Garbage
    # choco install veeam-agent -y    # backups This DESTROYED MY PC
    # choco install wsl2 -y           # Windows subsystem for linux 2
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
function tasks {
    schtasks /create /tn "uncap" /tr "'C:\Windows\uncap' 0x1b:0x14" /sc onstart
    # We first have to activate the service
    w32tm /register
    net start w32time
    w32tm /resync
    schtasks /create /tn "time sync" /tr "'w32tm' /resync" /sc onstart
}

## Start Installation
base_install
linking
swap
tasks
full_install
vim_install
linux

