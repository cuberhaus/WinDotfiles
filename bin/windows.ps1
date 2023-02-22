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

    Remove-Item $HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
    cmd /c mklink C:\Users\polcg\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json C:\Users\polcg\WinDotfiles\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
}
function base_install {
    # https://github.com/gluons/powershell-git-aliases

    # Command-line windows update
    Install-Module PSWindowsUpdate
    Get-WindowsUpdate
    Install-WindowsUpdate
    # Enable developer mode https://www.ntweekly.com/2022/04/05/how-to-enable-developer-mode-on-windows-11-using-powershell/
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
    # Chocolatey install
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    choco install -y 7zip.install           # Archiver
    choco install -y curl  		            # Curl is a command line tool for transferring data with URLs
    choco install -y fzf                    # Fuzzy finder
    choco install -y git.install            # Git
    choco install -y googlechrome 	        # Web browser
    choco install -y linkshellextension     # Make links from explorer
    choco install -y make                   # Makefiles
    choco install -y nirlauncher            # Have gui for sysinternals (MUST GO FIRST)
    choco install -y openssh 	            # SSH client
    choco install -y poshgit                # Git bar
    choco install -y powershell-core        # Updated powershell
    choco install -y python                 # Python
    choco install -y rclone                 # Git but without version control
    choco install -y strawberryperl         # Pearl
    choco install -y wget 		            # A command-line utility for retrieving files using HTTP protocols
    choco install -y yarn                   # Packages, need it for vim
    choco install -y zip                    # Zip from terminal
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
}

function linux {
    # enable windows subsystem for linux control panel -> programs and characteristics -> enable features
    Dism /Online /Enable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /All
    wsl --install
    # wsl -l -v
    #wsl --set-default-version 2
}

function emacs {
    # Add environment variable HOME to C:\Users\polcg\
    # Add $HOME\.emacs.d\bin\doom to path
    # personal config not working yet on windows
    # choco install -y emacs           # Editor
    # choco install -y git ripgrep llvm fd hunspell.portable 
}

function full_install {
    pip3 install pipenv
    choco install -y obsidian               # Readme editor
    choco install -y autohotkey.portable    # Automation software
    choco install -y calibre                # Books manager
    choco install -y ccleaner  	            # Cleanup
    choco install -y choco-cleaner          # Delete caches from chocolatey
    choco install -y discord                # Discord
    choco install -y geforce-experience     # Nvidia card updates
    choco install -y gimp                   # Photoshop
    choco install -y malwarebytes           # Anti-virus
    choco install -y mobaxterm              # PAR (makes wxparaver WORK)
    choco install -y openjdk                # Open source java development kit
    choco install -y powertoys              # Powertoys!
    choco install -y rufus                  # Burn iso's on usb
    choco install -y spotify                # Spotify
    choco install -y sysinternals --params "/Sysinternals"  # tools for windows
    choco install -y thunderbird            # Email client
    choco install -y transmission           # Simple torrent client
    choco install -y treesizefree           # View file sizes in system that clog memory
    choco install -y vlc 		            # Media player
    choco install -y vscode                 # GUI Editor
    choco install -y greenshot              # Better screenshots
    # choco install -y autoruns         # What programs are configured to startup automatically
}

function optional {
    # Probably
    # choco install -y pswindowsupdate 
    # choco install -y windirstat      # View file sizes in system to clean up space
    choco install -y adobereader  	        # Pdf viewer
    choco install -y audacity               # Audio editor
    choco install -y chocolateygui          # A gui for chocolatey package manager
    choco install -y chromium               # Open source Web browser
    choco install -y cpu-z.install          # List pc infor
    choco install -y doxygen.install        # c++ documentation
    choco install -y eclipse                # java/SQL IDE // doesnt quite work properly??
    choco install -y firefox                # Open source web browser
    choco install -y git-lfs                # Git large file storage
    choco install -y intellijidea-community # Free version java IDE
    choco install -y intellijidea-ultimate  # Paid version with sql IDE
    choco install -y jdk8                   # java v8
    choco install -y jre8 
    choco install -y libreoffice-still      # Office suite
    choco install -y obs-studio             # Record screen in windows, works with internal audio better than mac
    choco install -y openjdk                # Open source java development kit
    choco install -y pandoc                 # Universal document converter
    choco install -y procexp                # Process explorer
    choco install -y putty                  # SSH telnet
    choco install -y pycharm                # Best Python IDE
    choco install -y pycharm-community      # Community version
    choco install -y r.project              # Probabilitat i estadística
    choco install -y r.studio               # Probabilitat i estadística IDE
    choco install -y skype 		            # Skype
    choco install -y slack                  # Slack
    choco install -y sublimetext3           # fast editor
    choco install -y teamviewer             # Control other pc remotely
    choco install -y telegram               # Telegram
    choco install -y toastify  		        # Toastify adds some missing functionallity to the Spotify client.
    choco install -y tor-browser            # Browse the web without restrictions and without being traced
    choco install -y virtualbox             # Virtualization tool
    choco install -y wireshark              # Network protocol analyzer
    
    # Garbage
    # choco install -y python2  // THIS BREAKS NEOVIM PYTHON
    # choco install -y reflect-free    # backups (EOL) just use windows (crear una imagen de sistema)
    # choco install -y veeam-agent     # backups This DESTROYED MY PC
    # choco install -y wsl2            # Windows subsystem for linux 2
}

function vim_install {
    choco install -y vim 
    choco install -y neovim 
    #vim plug neovim
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force

    #vim plug for PowerShell
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

    npm install -g neovim #npm
    gem install neovim # gem environments
    pip install --upgrade neovim # Python3
    vim +PlugInstall +qall # Install plugins
}

function swap {
    choco install -y sharpkeys # allows to take a look at this registry entries and add more keybindings easily
    # better to just use register
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 00000000000000000200000001003a0000000000
    # cp $uncap C:\Windows\
    # Swap caps with escape https://github.com/susam/uncap#readme
}

function games_install {
    choco install -y goggalaxy 
    choco install -y leagueoflegends 
    choco install -y steam 
    choco install -y epicgameslauncher 
}

function tasks {
    # We first have to activate the service
    w32tm /register
    net start w32time
    w32tm /resync
    schtasks /create /tn "time sync" /tr "'w32tm' /resync" /sc onlogon
    # schtasks /create /tn "uncap" /tr "'C:\Windows\uncap' 0x1b:0x14" /sc onlogon 
    # schtasks /create /tn "time sync" /tr "'wt' update" /sc onlogon
}

function bootloader {
    # check that there is only one booting instance in arranque
    msconfig
}

## Start Installation
base_install
linking
swap
tasks
full_install
vim_install
linux
msconfig

