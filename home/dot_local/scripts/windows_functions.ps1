$dotfiles = "$HOME\WinDotfiles\"
$documents = "Documents"
$cho = "choco install -y " # choco install command
# Consider installing windbg, from microsoft
function base_install {
    
    # https://github.com/gluons/powershell-git-aliases
    Write-Host "Hello!"
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
        "anki"
        "7zip.install", # Archiver
        "curl", # Curl is a command line tool for transferring data with URLs
        "filezilla" # Manage files in FTP
        "freefilesync", # Sync files
        "fzf", # Fuzzy finder
        "gh", # GitHub CLI
        "git.install", # Git
        "googlechrome", # Web browser
        "javaruntime" # Java
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
        "winrar" # Archiver
        "winscp", # FTP client
        "yarn", # Packages, needed for Vim
        "zip"                     # Zip from terminal
        # "nirlauncher", # Have GUI for Sysinternals (MUST GO FIRST)
        # "rsync" # Rsync for windows, does not work very well, use rclone instead
    )

    InstallSoftware $softwareList

}

function associate_extensions() {
    # These will work if there does not exist an entry in the registry for the extension otherwise just set manually
    cmd.exe /c "assoc .R=RWorkspace" # R
    cmd.exe /c "assoc .bat=VSCodeSourceFile" # Batch
    cmd.exe /c "assoc .c=VSCodeSourceFile" # C
    cmd.exe /c "assoc .cc=VSCodeSourceFile" # C++
    cmd.exe /c "assoc .cpp=VSCodeSourceFile" # C++
    cmd.exe /c "assoc .css=VSCodeSourceFile" # CSS
    cmd.exe /c "assoc .csv=Excel.CSV" # CSV
    cmd.exe /c "assoc .el=VSCodeSourceFile" # Emacs Lisp
    cmd.exe /c "assoc .frag=VSCodeSourceFile" # GLSL
    cmd.exe /c "assoc .geom=VSCodeSourceFile" # GLSL
    cmd.exe /c "assoc .go=VSCodeSourceFile" # Go
    cmd.exe /c "assoc .hh=VSCodeSourceFile" # C++
    cmd.exe /c "assoc .hs=VSCodeSourceFile" # Haskell
    cmd.exe /c "assoc .ini=VSCodeSourceFile" 
    cmd.exe /c "assoc .java=VSCodeSourceFile" # Java
    cmd.exe /c "assoc .js=VSCodeSourceFile" # JavaScript
    cmd.exe /c "assoc .json=VSCodeSourceFile" # JSON
    cmd.exe /c "assoc .kt=VSCodeSourceFile" # Kotlin
    cmd.exe /c "assoc .log=VSCodeSourceFile" # Better with sublime text
    cmd.exe /c "assoc .lua=VSCodeSourceFile" # Lua
    cmd.exe /c "assoc .md=VSCodeSourceFile" # Better with sublime text
    cmd.exe /c "assoc .org=VSCodeSourceFile" 
    cmd.exe /c "assoc .php=VSCodeSourceFile" # PHP
    cmd.exe /c "assoc .pl=VSCodeSourceFile" # Pearl
    cmd.exe /c "assoc .pm=VSCodeSourceFile" # Pearl
    cmd.exe /c "assoc .ps1=VSCodeSourceFile" # Powershell
    cmd.exe /c "assoc .psm1=VSCodeSourceFile" # Powershell
    cmd.exe /c "assoc .py=VSCodeSourceFile" # Python
    cmd.exe /c "assoc .r=RWorkspace" # R
    cmd.exe /c "assoc .rmd=RWorkspace" # R
    cmd.exe /c "assoc .sql=VSCodeSourceFile" # SQL
    cmd.exe /c "assoc .tex=VSCodeSourceFile" # maybe should open with texstudio
    cmd.exe /c "assoc .toml=VSCodeSourceFile" # TOML
    cmd.exe /c "assoc .vert=VSCodeSourceFile" # GLSL
    cmd.exe /c "assoc .xls=Excel.CSV" # Excel
    cmd.exe /c "assoc .xlsm=Excel.CSV" # Excel
    cmd.exe /c "assoc .xlsx=Excel.CSV" # Excel
    cmd.exe /c "assoc .xml=VSCodeSourceFile" # XML
    cmd.exe /c "assoc .yml=VSCodeSourceFile" # YAML
}

function framework() {
    # https://www.amd.com/es/support # AMD drivers

    # https://knowledgebase.frame.work/en_us/framework-laptop-bios-and-driver-releases-amd-ryzen-7040-series-r1rXGVL16 # Framework drivers and BIOS
    # https://community.frame.work/t/power-optimizations-under-windows-lower-temps-longer-battery-life/19505 # Power optimizations 

    # Activate Windows and donwload and activate Office
    # irm https://massgrave.dev/get | iex
}

# DOES NOT WORK
function jupyter_install{
    # Jupyter path
    [Environment]::SetEnvironmentVariable("PATH", $Env:PATH + ";C:\Users\pol\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\site-packages", [EnvironmentVariableTarget]::Machine)

    choco install dotnet-sdk # needed for jupyter
    dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
    dotnet tool install --global Microsoft.dotnet-interactive
    mkdir C:\Users\pol\AppData\Roaming\jupyter\kernels
    dotnet interactive jupyter install
    pip install jupyter
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
        "auto-dark-mode", # Dark mode for windows
        "autohotkey", # Automation software
        "calibre", # Books manager
        "ccleaner", # Cleanup
        "choco-cleaner", # Delete caches from chocolatey
        "cmake", # Cmake (emacs)
        "discord", # Discord
        "forticlientvpn",
        "fxsound", # Sound enhancer (framework)
        "gimp", # Photoshop
        "git-lfs", # Git large file storage
        "greenshot", # Better screenshots
        "hwinfo", # Hardware info, better than CPU-Z, RAM, CPU, GPU, SSD 
        "inkscape" # Needed for svg in latex compiling
        "intellijidea-ultimate", # Paid version with SQL IDE
        "joplin" # Note taking (evernote alternative?)
        "kindle" # Kindle
        "libreoffice-still", # Office suite
        "logseq" # Note taking
        "miktex", # Latex (emacs needs it) (biber is better than bibtex)
        "mobaxterm", # PAR (makes wxparaver WORK)
        "obsidian", # Readme editor, Journal, task manager
        "openjdk", # Open source java development kit
        "powertoys", # Powertoys!
        "pycharm", # Best Python IDE
        "rainmeter", # "Conky" Rss feed on windows with clickable links
        "rufus", # Burn iso's on usb
        "sendtokindle" # Kindle
        "sublimemerge", # Editor merge
        "sublimetext3", # fast editor
        "sysinternals", # tools for windows
        "texmaker", # Latex (emacs needs it)
        "texstudio", # LaTeX
        "thunderbird", # Email client
        "tor-browser", # Browse the web without restrictions and without being traced
        "transmission", # Simple torrent client
        "treesizefree", # View file sizes in system that clog memory
        "unifying", # Logitech unifying devices add and remove
        "vlc", # Media player
        "vscode" # GUI Editor
        "xnview" # Image browser (can view images from drive much better than windows photos)
        # "autohotkey.portable", # Automation software
        # "pycharm-community", # Free version of pycharm
        # "spotify", # Spotify there's some errors with the installation
        # "sumatrapdf" # PDF viewer

        "r" # Probabilitat i estadística
        "r.studio" # Probabilitat i estadística IDE
        "rtools" # R compiler
    )

    InstallSoftware $softwareList
}

function optional {
    $softwareList = @(
        # "shutup10", # Disable telemetry https://community.frame.work/t/power-optimizations-under-windows-lower-temps-longer-battery-life/19505
        "androidstudio", # Android IDE to use with flutter (android emulator)
        "audacity", # Audio editor
        "chromium", # Open source Web browser
        "cpu-z.install", # List pc information
        "cuda" # Nvidia cuda
        "cygwin", # Linux terminal
        "docker-desktop" # Docker, do not install docker inside ubuntu WSL2 onlya this package is needed, docker will be able to be used inside ubuntu as well
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
        # "throttlestop" # Undervolt CPU # cant use on AMD
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
    choco install -y vim 
    choco install neovim -y --package-parameters="'/NeoVimOnPathForAll'"

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

    # Set windows time to UTC (for dual boot)
    # Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Value 1 -Type DWord

    # To remove the entry above
    # Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal"

    # If above does not work, try this
    # Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Value 1 -Type QWord

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

function linux_files() {
    choco install ext2fsd
    #diskinternals linux reader (funciona prou be)
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

    # [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\neovim\Neovim\bin", [EnvironmentVariableTarget]::Machine)
    # [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\bin", [EnvironmentVariableTarget]::Machine)
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
