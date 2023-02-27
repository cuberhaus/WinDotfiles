$dotfiles = "C:\Users\polcg\WinDotfiles\"
$uncap = "$dotfiles\uncap.exe" # uncap location
$documents = "Documents"

# Think about adding winget

function Link-Dotfiles {
    # Set up directory paths
    $directories = @(
        "$HOME\Documents\PowerShell",
        "$HOME\Documents\WindowsPowerShell",
        "$HOME\AppData\Local\nvim"
        "$HOME\Documents\Rainmeter\Skins"
        "$HOME\AppData\Roaming\Rainmeter"
    )

    # Set up symlink paths
    $symlinkSources = @(
        "$HOME\WinDotfiles\AppData\Roaming\Rainmeter\Layouts"
        "$HOME\WinDotfiles\Documents\Rainmeter\Skins\RSS Feed",
        "$HOME\WinDotfiles\Documents\PowerShell\profile.ps1",
        "$HOME\WinDotfiles\Documents\PowerShell\profile.ps1",
        "$HOME\WinDotfiles\AppData\Local\nvim\init.vim",
        "$HOME\WinDotfiles\_vimrc",
        "$HOME\WinDotfiles\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
    )

    $symlinkDestinations = @(
        "$HOME\AppData\Roaming\Rainmeter\Layouts"
        "$HOME\Documents\Rainmeter\Skins\RSS Feed",
        "$HOME\Documents\WindowsPowerShell\profile.ps1",
        "$HOME\Documents\PowerShell\profile.ps1",
        "$HOME\AppData\Local\nvim\init.vim",
        "$HOME\_vimrc",
        "$HOME\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
    )

    # Create necessary directories
    foreach ($directory in $directories) {
        # Write-Host "hi"
        if (-not (Test-Path $directory -PathType Container)) {
            # Write-Host "Im in"
            New-Item -ItemType Directory -Force $directory
        }
    }

    # Symlink files and directories
    for ($i = 0; $i -lt $symlinkSources.Count; $i++) {
        $source = $symlinkSources[$i]
        $destination = $symlinkDestinations[$i]
        if (Test-Path $destination) {
            Remove-Item $destination -Recurse -Force # Remove file or directory if already exists on destination
        }

        if (Test-Path $source -PathType Container) { # check if source is a directory
            cmd /c mklink /d $destination $source
        }
        elseif (Test-Path $source){
            cmd /c mklink $destination $source
        }
    }
}

function base_install {
    # https://github.com/gluons/powershell-git-aliases

    # Install PSWindowsUpdate and update Windows
    Install-Module PSWindowsUpdate -Force
    Get-WindowsUpdate -Install -Verbose

    # Enable developer mode
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock' -Name 'AllowDevelopmentWithoutDevLicense' -Value 1 -Force # better than regadd (it's the powershell version of the legacy command)

    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    # Install packages using Chocolatey
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

    # Install git-aliases module
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
}

function linux {
     # Enable Windows Subsystem for Linux
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

    # # enable windows subsystem for linux control panel -> programs and characteristics -> enable features
    # Dism /Online /Enable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /All

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
    choco install -y autohotkey.portable    # Automation software
    choco install -y calibre                # Books manager
    choco install -y ccleaner  	            # Cleanup
    choco install -y choco-cleaner          # Delete caches from chocolatey
    choco install -y discord                # Discord
    choco install -y geforce-experience     # Nvidia card updates
    choco install -y gimp                   # Photoshop
    choco install -y git-lfs                # Git large file storage
    choco install -y greenshot              # Better screenshots
    choco install -y malwarebytes           # Anti-virus
    choco install -y mobaxterm              # PAR (makes wxparaver WORK)
    choco install -y obsidian               # Readme editor
    choco install -y openjdk                # Open source java development kit
    choco install -y powertoys              # Powertoys!
    choco install -y pycharm                # Best Python IDE
    choco install -y rainmeter              # "Conky" Rss feed on windows with clickable links
    choco install -y rufus                  # Burn iso's on usb
    choco install -y spotify                # Spotify
    choco install -y sublimetext3           # fast editor
    choco install -y sublimemerge           # Editor merge
    choco install -y sysinternals --params "/Sysinternals"  # tools for windows
    choco install -y thunderbird            # Email client
    choco install -y tor-browser            # Browse the web without restrictions and without being traced
    choco install -y transmission           # Simple torrent client
    choco install -y treesizefree           # View file sizes in system that clog memory
    choco install -y unifying               # Logitech unifying devices add and remove
    choco install -y vlc 		            # Media player
    choco install -y vscode                 # GUI Editor
    # choco install -y autoruns         # What programs are configured to startup automatically
}

function optional {
    # Probably
    choco install -y adobereader  	        # Pdf viewer
    choco install -y audacity               # Audio editor
    choco install -y chocolateygui          # A gui for chocolatey package manager
    choco install -y chromium               # Open source Web browser
    choco install -y cpu-z.install          # List pc infor
    choco install -y doxygen.install        # c++ documentation
    choco install -y eclipse                # java/SQL IDE // doesnt quite work properly??
    choco install -y firefox                # Open source web browser
    choco install -y ganttproject           # Gantt 
    choco install -y intellijidea-community # Free version java IDE
    choco install -y intellijidea-ultimate  # Paid version with sql IDE
    choco install -y jdk8                   # java v8
    choco install -y jre8 
    choco install -y libreoffice-still      # Office suite
    choco install -y notepadplusplus.install # Editor
    choco install -y obs-studio             # Record screen in windows, works with internal audio better than mac
    choco install -y openjdk                # Open source java development kit
    choco install -y pandoc                 # Universal document converter
    choco install -y procexp                # Process explorer
    choco install -y putty                  # SSH telnet
    choco install -y pycharm-community      # Community version
    choco install -y r.project              # Probabilitat i estadística
    choco install -y r.studio               # Probabilitat i estadística IDE
    choco install -y skype 		            # Skype
    choco install -y slack                  # Slack
    choco install -y teamviewer             # Control other pc remotely
    choco install -y telegram               # Telegram
    choco install -y texstudio              # Latex
    choco install -y toastify  		        # Toastify adds some missing functionallity to the Spotify client.
    choco install -y tomighty               # Pomodoro timer
    choco install -y virtualbox             # Virtualization tool
    choco install -y wireshark              # Network protocol analyzer
    
    # Garbage
    # choco install -y doublecmd              # ranger?
    # choco install -y pswindowsupdate 
    # choco install -y windirstat      # View file sizes in system to clean up space
    # choco install -y logitech-options       # Old logitech options
    # choco install -y python2  // THIS BREAKS NEOVIM PYTHON
    # choco install -y reflect-free    # backups (EOL) just use windows (crear una imagen de sistema)
    # choco install -y veeam-agent     # backups This DESTROYED MY PC
    # choco install -y wsl2            # Windows subsystem for linux 2
}

function vim_install {
choco install -y vim, neovim

    # Install vim-plug for Neovim
    $plugPath = "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim"
    iwr -useb "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile $plugPath
    if (!(Test-Path $plugPath)) { throw "Failed to install vim-plug for Neovim" }

    # Install vim-plug for PowerShell
    $vimfilesPath = "$HOME/vimfiles"
    if (!(Test-Path $vimfilesPath)) { mkdir $vimfilesPath | Out-Null }
    $plugPath = "$vimfilesPath/autoload/plug.vim"
    iwr -useb "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile $plugPath
    if (!(Test-Path $plugPath)) { throw "Failed to install vim-plug for PowerShell" }

    # Install Neovim support for npm, gem and Python3
    npm install -g neovim
    gem install neovim
    pip install --upgrade neovim

    # Install plugins
    vim +PlugInstall +qall}

function swap {
    choco install -y sharpkeys # allows to take a look at this registry entries and add more keybindings easily
    # better to just use register
    # cp $uncap C:\Windows\
    # Swap caps with escape https://github.com/susam/uncap#readme
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d   "00000000000000000300000001003A003A00010000000000" 
    # To get the current binary value from sharpkeys and change it forever without having to re configurate sharpkeys just replace the binary on the registry entry above
    # reg query "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map"
}

function games_install {
    choco install -y goggalaxy 
    choco install -y leagueoflegends 
    choco install -y steam 
    choco install -y epicgameslauncher 
}

function tasks {
    # Activate the Windows Time service # not working yet
    # w32tm /register
    # net start w32time
    # w32tm /resync

    # Create a task to automatically resync the time on logon
    # schtasks /create /tn "Time Sync" /tr "w32tm /resync" /sc onlogon /ru System # does not quite work
    
    # schtasks /create /tn "uncap" /tr "'C:\Windows\uncap' 0x1b:0x14" /sc onlogon 
    # schtasks /create /tn "Update" /tr "powershell.exe -command Start-Process wt -ArgumentList 'new-tab -d . -p PowerShell -c update' -Verb RunAs" /sc onlogon
}

function bootloader {
    # check that there is only one booting instance in arranque
    msconfig
}
function path {
    [Environment]::SetEnvironmentVariable("PATH", $Env:PATH + ";C:\Program Files\Sublime Text 3\", [EnvironmentVariableTarget]::Machine)
}

## Start Installation
# base_install
Link-Dotfiles
# swap
# tasks
# full_install
# vim_install
# linux
# msconfig

