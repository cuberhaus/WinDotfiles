$dotfiles = "$HOME\WinDotfiles\"
$documents = "Documents"
$cho = "choco install -y " # choco install command
# Consider installing windbg, from microsoft
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
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    $softwareList = @(
        "winrar" # Archiver
        "7zip.install", # Archiver
        "curl", # Curl is a command line tool for transferring data with URLs
        "fzf", # Fuzzy finder
        "gh", # GitHub CLI
        "git.install", # Git
        "googlechrome", # Web browser
        "linkshellextension", # Make links from Explorer
        "make", # Makefiles
        "nodejs", # Nodejs (needed for Vim, npm)
        "openssh", # SSH client
        "poshgit", # Git bar
        "powershell-core", # Updated PowerShell
        "python", # Python
        "rclone", # Git but without version control
        "ruby", # Ruby (needed for Vim, gem)
        "sharpkeys", # Allows you to manage registry entries and keybindings easily
        "strawberryperl", # Perl
        "wget", # A command-line utility for retrieving files using HTTP protocols
        "yarn", # Packages, needed for Vim
        "freefilesync", # Sync files
        "winscp", # FTP client
        "filezilla"
        "zip"                     # Zip from terminal
        # "nirlauncher", # Have GUI for Sysinternals (MUST GO FIRST)
        # "rsync" # Rsync for windows
    )

    InstallSoftware $softwareList

}

function framework() {
    # https://www.amd.com/es/support # AMD drivers

    # https://knowledgebase.frame.work/en_us/framework-laptop-bios-and-driver-releases-amd-ryzen-7040-series-r1rXGVL16 # Framework drivers and BIOS
    # https://community.frame.work/t/power-optimizations-under-windows-lower-temps-longer-battery-life/19505 # Power optimizations 

    # Activate Windows and donwload and activate Office
    # irm https://massgrave.dev/get | iex
}

function run_on_second_execution {
    # RUN AFTER REBOOT
    pip3 install pipenv
    # Install git-aliases module
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
    emacs_install
    vim_install
    clone
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

function emacs_install {
    # Add environment variable HOME to C:\Users\polcg\
    # Add $HOME\.emacs.d\bin\doom to path
    choco install -y emacs                  # Emacs
    choco install -y git ripgrep llvm fd hunspell.portable 
    Set-Location $dotfiles
    git submodule update --init --recursive # Get chemacs submodule
    chezmoi apply # have to put the submodule in the correct place in $HOME

    # in bash, This should already be done by having submodule
    <#
    [ -f ~/.emacs ] && mv ~/.emacs ~/.emacs.bak
    [ -d ~/.emacs.d ] && mv ~/.emacs.d ~/.emacs.default
    git clone https://github.com/plexus/chemacs2.git ~/.emacs.d
    #> 

    # Doom emacs
    git clone --depth 1 https://github.com/doomemacs/doomemacs "$HOME\.config\doom-emacs"
    & "$HOME\.config\doom-emacs\bin\doom" install
}

function InstallSoftware($software) {
    foreach ($app in $software) {
        Write-Host "Installing $app..."
        choco install -y $app
    }
}
function full_install {
    # List of software to install
    $softwareList = @(
        # "auto-dark-mode", # Dark mode for windows # Causes BSOD?
        "autohotkey.portable", # Automation software
        "calibre", # Books manager
        "ccleaner", # Cleanup
        "choco-cleaner", # Delete caches from chocolatey
        "cmake", # Cmake (emacs)
        "discord", # Discord
        "forticlientvpn",
        "gimp", # Photoshop
        "git-lfs", # Git large file storage
        "greenshot", # Better screenshots
        "intellijidea-ultimate", # Paid version with SQL IDE
        "libreoffice-still", # Office suite
        "miktex", # Latex (emacs needs it)
        "mobaxterm", # PAR (makes wxparaver WORK)
        "obsidian", # Readme editor
        "openjdk", # Open source java development kit
        "powertoys", # Powertoys!
        "pycharm", # Best Python IDE
        "rainmeter", # "Conky" Rss feed on windows with clickable links
        "rufus", # Burn iso's on usb
        "sublimemerge", # Editor merge
        "sublimetext3", # fast editor
        "sysinternals", # tools for windows
        "thunderbird", # Email client
        "tor-browser", # Browse the web without restrictions and without being traced
        "transmission", # Simple torrent client
        "treesizefree", # View file sizes in system that clog memory
        "unifying", # Logitech unifying devices add and remove
        "vlc", # Media player
        "vscode"                  # GUI Editor
        # "cuda"                   # Nvidia cuda
        # "pycharm-community", # Free version of pycharm
        # "spotify", # Spotify there's some errors with the installation
    )

    InstallSoftware $softwareList
}

function optional {
    $softwareList = @(
        # "throttlestop" # Undervolt CPU # cant use on AMD
        # "hwinfo", # Hardware info 
        # "shutup10", # Disable telemetry https://community.frame.work/t/power-optimizations-under-windows-lower-temps-longer-battery-life/19505
        "androidstudio", # Android IDE to use with flutter (android emulator)
        "audacity", # Audio editor
        "chromium", # Open source Web browser
        "cpu-z.install", # List pc infor
        "cygwin", # Linux terminal
        "docker-desktop" # Docker
        "doxygen.install", # C++ documentation
        "eclipse", # Java/SQL IDE
        "firefox", # Open source web browser
        "flutter", # Flutter to make apps
        "ganttproject", # Gantt chart project management
        "geforce-experience", # Nvidia card updates
        "googledrive", # Google drive
        "itunes", # Music player
        "jdk8", # Java v8
        "jre8", # Java runtime environment
        "malwarebytes", # Anti-virus
        "obs-studio", # Screen recording software
        "octave.portable", # Matlab alternative
        "openjdk", # Open source Java Development Kit
        "pandoc", # Universal document converter
        "postman", # API testing
        "procexp", # Process explorer
        "putty", # SSH telnet
        "pycharm-community", # Community version of PyCharm
        "r.project", # Probabilitat i estadística
        "r.studio", # Probabilitat i estadística IDE
        "skype", # Skype
        "slack", # Slack
        "teamviewer", # Control other PC remotely
        "telegram", # Telegram
        "texstudio", # LaTeX
        "toastify", # Adds missing functionality to the Spotify client
        "tomighty", # Pomodoro timer
        "virtualbox", # Virtualization tool
        "vmware-workstation-player", # SI
        "wireshark", # Network protocol analyzer (needs manual install of npcap)
        "zoom", # Zoom
        "zotero"                   # Bibliography manager
        # "adobereader", # Pdf viewer
        # "anaconda3", # Python IDE DO NOT INSTALL LIKE THIS PLEASE
        # "chocolateygui", # A gui for chocolatey package manager
        # "intellijidea-community", # Free version Java IDE
    )

    InstallSoftware $softwareList
}
function garbage {
    $garbageList = @(
        # "autoruns",                            # What programs are configured to startup automatically
        # "doublecmd",                           # ranger?
        # "logitech-options",                    # Old Logitech Options
        # "notepadplusplus.install",             # Editor
        # "pswindowsupdate",
        # "python2",                             # THIS BREAKS NEOVIM PYTHON
        # "reflect-free",                        # Backups (EOL) just use Windows (create a system image)
        # "texlive",                             # LaTeX (emacs needs it) - not working
        # "veeam-agent",                         # Backups - this destroyed my PC
        # "windirstat",                          # View file sizes in the system to clean up space
        # "winpcap",                             # Requirement for Wireshark (OBSOLETE)
        # "wsl2"                                 # Windows Subsystem for Linux 2
    )

    InstallSoftware $garbageList
}

function vim_install {
    choco install -y vim neovim

    # Install vim-plug for Neovim
    Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force 

    # Install vim-plug for PowerShell
    Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item $HOME/vimfiles/autoload/plug.vim -Force 

    # Install plugins
    vim +PlugInstall +qall

    # Install Neovim support for npm, gem and Python3
    # Paths for these are not being detected
    npm install -g neovim
    gem install neovim
    pip install --upgrade neovim # needs to add python from microsoft store first, type python in powershell and it will ask you to install it
}

function registry {
    # Swap caps with escape https://github.com/susam/uncap#readme
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d   "00000000000000000300000001003A003A00010000000000" 
    # To get the current binary value from sharpkeys and change it forever without having to re configurate sharpkeys just replace the binary on the registry entry above, use this command to get the current value:
    # reg query "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map"

    # Disable sticky keys popup after pressing several times
    Set-Location "HKCU:\Control Panel\Accessibility\StickyKeys"
    Set-ItemProperty -Path . -Name Flags -Value 58 -Type DWord
    Set-Location "$HOME"
}
function games_install {
    $gamesList = @(
        "goggalaxy",
        "leagueoflegends",
        "steam",
        "epicgameslauncher"
    )

    InstallSoftware $gamesList
}


function schedule_tasks {
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
    [Environment]::SetEnvironmentVariable("VISUAL", "code --wait", [EnvironmentVariableTarget]::Machine)
    [Environment]::SetEnvironmentVariable("EDITOR", "code --wait", [EnvironmentVariableTarget]::Machine)
    [Environment]::SetEnvironmentVariable("HOME", "C:\Users\polcg", [EnvironmentVariableTarget]::Machine)
    setx HOME %USERPROFILE%

    #Extras
    [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\nodejs", [EnvironmentVariableTarget]::Machine)
    [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\ruby31\bin", [EnvironmentVariableTarget]::Machine)



}
function remove_bloat {
    Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage # Cortana
    Get-AppxPackage -AllUsers Microsoft.BingWeather | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.GetHelp | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.Getstarted | Remove-AppPackage
    Get-AppxPackage -AllUsers Microsoft.Microsoft3DViewer | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.MixedReality.Portal | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.People | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.ScreenSketch | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.SkypeApp | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.WindowsCommunicationsApps | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.WindowsFeedbackHub | Remove-AppPackage
    Get-AppxPackage -AllUsers Microsoft.WindowsMaps | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.WindowsSoundRecorder | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.Xbox.TCUI | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.XboxApp | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.XboxGameOverlay | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.XboxIdentityProvider | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.ZuneMusic | Remove-AppxPackage
    Get-AppxPackage -AllUsers Microsoft.ZuneVideo | Remove-AppxPackage
}
function errors {
    chkdsk # This will check disk for errors
    sfc /scannow # Use la herramienta Comprobador de archivos de sistema para reparar los archivos de sistema que faltan o están dañados.
    mdsched.exe #check if RAM memory works
    # control panel -> system and security -> system -> advanced system settings -> advanced -> startup and recovery -> settings -> uncheck automatically restart
    # control panel -> system and security -> security and maintenance -> Maintenance -> view reliability history -> view problem details -> copy to clipboard
    windbg
    %SystemRoot%\Minidump
}

function clone {
    Set-Location $HOME\repos
    git clone https://github.com/cuberhaus/docs.git
    git clone https://github.com/cuberhaus/dotfiles.git
    git clone https://github.com/cuberhaus/fib.git
    git clone https://github.com/cuberhaus/dev.git 
    Set-Location $HOME
}

function directories {
    $directories = @(
        "$HOME\repos"
    )

    # Create necessary directories
    foreach ($directory in $directories) {
        if (-not (Test-Path $directory -PathType Container)) {
            New-Item -ItemType Directory -Force $directory
        }
    }
}
function fonts() {
    # Install fonts WIP
}

# schedule_tasks

## Start Installation
directories
base_install
path
registry
full_install
linux
# remove_bloat
fonts
#games_install


# ON SECOND INSTALL
# run_on_second_execution

