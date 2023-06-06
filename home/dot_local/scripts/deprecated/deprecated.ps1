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
        if (-not (Test-Path $directory -PathType Container)) {
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

        if (Test-Path $source -PathType Container) {
            # check if source is a directory
            cmd /c mklink /d $destination $source
        }
        elseif (Test-Path $source) {
            cmd /c mklink $destination $source
        }
    }
}
function pull_old {
    <#
    .SYNOPSIS
    Pulls the latest changes from all Git repositories within the current directory and its subdirectories.

    .DESCRIPTION
    This function searches the current directory and its subdirectories for Git repositories and performs a "git pull" command to retrieve the latest changes from the remote repository.

    .PARAMETER Recurse
    If this switch is specified, the function will search for Git repositories in all subdirectories of the current directory.

    .EXAMPLE
    To pull the latest changes from Git repositories in the current directory, run the following command:
    pull

    .EXAMPLE
    To pull the latest changes from Git repositories in the current directory and its subdirectories, run the following command:
    pull -Recurse

    .NOTES
    Author: Pol Casacuberta
    Date: 21/02/2023
    #>
    param(
        [switch]$Recurse,
        [switch]$Help
    )

    if ($Help) {
        Get-Help pull -Full
        return
    }

    # Store the starting directory
    $startDirectory = (Get-Item -Path ".\").FullName

    # Set up a trap to ensure that the function returns to the starting directory if it is stopped by the user
    trap {
        Set-Location $startDirectory
        Write-Host "Function stopped by user. Returning to original directory." -ForegroundColor Yellow
        return
    }

    # Use Try-Catch to handle errors and return to the starting directory
    try {
        # If the -Recurse switch is specified, use the -Recurse parameter of Get-ChildItem
        if ($Recurse) {
            # Loop over all non-hidden directories in the current directory and its subdirectories
            Get-ChildItem -Directory -Recurse -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git pull
                    Set-Location $_.FullName
                    Write-Host "Pulling from $($_.FullName)" -ForegroundColor Green
                    git pull
                    Set-Location ..
                } 
            }
        }
        else {
            # Loop over all non-hidden directories in the current directory
            Get-ChildItem -Directory -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git pull
                    Set-Location $_.FullName
                    Write-Host "Pulling from $($_.FullName)" -ForegroundColor Green
                    git pull
                    Set-Location ..
                } 
            }
        }
    }
    catch {
        Write-Error $_
        Set-Location $startDirectory
    }

    # Return to the starting directory
    Set-Location $startDirectory
}

# Status -Recurse
# Perform a git status on all git repositories in the current directory
function status {
    <#
    .SYNOPSIS
    Displays the git status of all repositories in the current directory (and its subdirectories, if -Recurse is specified).

    .DESCRIPTION
    This function finds all git repositories in the current directory (and its subdirectories, if -Recurse is specified), and then displays the git status of each repository.

    .PARAMETER Recurse
    If specified, the function will also search for git repositories in subdirectories of the current directory.

    .EXAMPLE
    PS C:\Projects> status -Recurse
    Entering C:\Projects\Project1
    On branch main
    Your branch is up to date with 'origin/main'.

    nothing to commit, working tree clean
    Entering C:\Projects\Project2
    On branch feature/some-feature
    Your branch is up to date with 'origin/feature/some-feature'.

    nothing to commit, working tree clean
    ...

    .NOTES
    Author: Pol Casacuberta
    Date: 21/02/2023

    #>
    param(
        [switch]$Recurse,
        [switch]$Help
    )

    if ($Help) {
        Get-Help status -Full
        return
    }
    # Store the starting directory
    $startDirectory = (Get-Item -Path ".\").FullName

    # Set up a trap to ensure that the function returns to the starting directory if it is stopped by the user
    trap {
        Set-Location $startDirectory
        Write-Host "Function stopped by user. Returning to original directory." -ForegroundColor Yellow
        return
    }

    # Use Try-Catch to handle errors and return to the starting directory
    try {
        # If the -Recurse switch is specified, use the -Recurse parameter of Get-ChildItem
        if ($Recurse) {
            # Loop over all non-hidden directories in the current directory and its subdirectories
            Get-ChildItem -Directory -Recurse -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git status
                    Set-Location $_.FullName
                    Write-Host "Entering $($_.FullName)" -ForegroundColor Green
                    git status
                    Set-Location ..
                } 
            }
        }
        else {
            # Loop over all non-hidden directories in the current directory
            Get-ChildItem -Directory -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git status
                    Set-Location $_.FullName
                    Write-Host "Entering $($_.FullName)" -ForegroundColor Green
                    git status
                    Set-Location ..
                } 
            }
        }
    }
    catch {
        Write-Error $_
        Set-Location $startDirectory
    }
    # Return to the starting directory
    Set-Location $startDirectory
}
    # # Install packages using Chocolatey
    # choco install -y 7zip.install           # Archiver
    # choco install -y curl  		            # Curl is a command line tool for transferring data with URLs
    # choco install -y fzf                    # Fuzzy finder
    # choco install -y gh                     # Github cli
    # choco install -y git.install            # Git
    # choco install -y googlechrome 	        # Web browser
    # choco install -y linkshellextension     # Make links from explorer
    # choco install -y make                   # Makefiles
    # choco install -y nirlauncher            # Have gui for sysinternals (MUST GO FIRST)
    # choco install -y openssh 	            # SSH client
    # choco install -y poshgit                # Git bar
    # choco install -y powershell-core        # Updated powershell
    # choco install -y python                 # Python
    # choco install -y rclone                 # Git but without version control
    # choco install -y sharpkeys # allows to take a look at this registry entries and add more keybindings easily
    # choco install -y strawberryperl         # Pearl
    # choco install -y wget 		            # A command-line utility for retrieving files using HTTP protocols
    # choco install -y yarn                   # Packages, need it for vim
    # choco install -y zip                    # Zip from terminal

# function full_install {
#     pip3 install pipenv
#     choco install -y autohotkey.portable    # Automation software
#     choco install -y calibre                # Books manager
#     choco install -y ccleaner  	            # Cleanup
#     choco install -y choco-cleaner          # Delete caches from chocolatey
#     choco install -y cmake                  # Cmake (emacs)
#     choco install -y discord                # Discord
#     choco install -y geforce-experience     # Nvidia card updates
#     choco install -y gimp                   # Photoshop
#     choco install -y git-lfs                # Git large file storage
#     choco install -y greenshot              # Better screenshots
#     choco install -y libreoffice-still      # Office suite
#     choco install -y malwarebytes           # Anti-virus
#     choco install -y miktex                 # Latex (emacs needs it)
#     choco install -y mobaxterm              # PAR (makes wxparaver WORK)
#     choco install -y obsidian               # Readme editor
#     choco install -y openjdk                # Open source java development kit
#     choco install -y powertoys              # Powertoys!
#     choco install -y pycharm                # Best Python IDE
#     choco install -y pycharm-community      # Free version of pycharm
#     choco install -y rainmeter              # "Conky" Rss feed on windows with clickable links
#     choco install -y rufus                  # Burn iso's on usb
#     choco install -y spotify                # Spotify
#     choco install -y sublimemerge           # Editor merge
#     choco install -y sublimetext3           # fast editor
#     choco install -y sysinternals --params "/Sysinternals"  # tools for windows
#     choco install -y thunderbird            # Email client
#     choco install -y tor-browser            # Browse the web without restrictions and without being traced
#     choco install -y transmission           # Simple torrent client
#     choco install -y treesizefree           # View file sizes in system that clog memory
#     choco install -y unifying               # Logitech unifying devices add and remove
#     choco install -y vlc 		            # Media player
#     choco install -y vscode                 # GUI Editor
#     # choco install -y cuda                   # Nvidia cuda
# }

# function optional {
#     choco install -y adobereader  	        # Pdf viewer
#     choco install -y audacity               # Audio editor
#     choco install -y chocolateygui          # A gui for chocolatey package manager
#     choco install -y chromium               # Open source Web browser
#     choco install -y cpu-z.install          # List pc infor
#     choco install -y doxygen.install        # c++ documentation
#     choco install -y eclipse                # java/SQL IDE // doesnt quite work properly??
#     choco install -y firefox                # Open source web browser
#     choco install -y ganttproject           # Gantt 
#     choco install -y intellijidea-community # Free version java IDE
#     choco install -y intellijidea-ultimate  # Paid version with sql IDE
#     choco install -y jdk8                   # java v8
#     choco install -y jre8                   # Java runtime environment
#     choco install -y obs-studio             # Record screen in windows, works with internal audio better than mac
#     choco install -y octave.portable        # Matlab alternative
#     choco install -y openjdk                # Open source java development kit
#     choco install -y pandoc                 # Universal document converter
#     choco install -y procexp                # Process explorer
#     choco install -y putty                  # SSH telnet
#     choco install -y pycharm-community      # Community version
#     choco install -y r.project              # Probabilitat i estadística
#     choco install -y r.studio               # Probabilitat i estadística IDE
#     choco install -y skype 		            # Skype
#     choco install -y slack                  # Slack
#     choco install -y teamviewer             # Control other pc remotely
#     choco install -y telegram               # Telegram
#     choco install -y texstudio              # Latex
#     choco install -y toastify  		        # Toastify adds some missing functionallity to the Spotify client.
#     choco install -y tomighty               # Pomodoro timer
#     choco install -y virtualbox             # Virtualization tool
#     choco install -y vmware-workstation-player # SI
#     choco install -y wireshark              # Network protocol analyzer (needs manual install of npcap)
#     choco install -y zotero                 # Bibliography manager
# }

# function garbage {
#     # Garbage
#     # choco install -y autoruns               # What programs are configured to startup automatically
#     # choco install -y doublecmd              # ranger?
#     # choco install -y logitech-options       # Old logitech options
#     # choco install -y notepadplusplus.install # Editor
#     # choco install -y pswindowsupdate 
#     # choco install -y python2  // THIS BREAKS NEOVIM PYTHON
#     # choco install -y reflect-free           # backups (EOL) just use windows (crear una imagen de sistema)
#     # choco install -y texlive                # Latex (emacs needs it) not working
#     # choco install -y veeam-agent            # backups This DESTROYED MY PC
#     # choco install -y windirstat             # View file sizes in system to clean up space
#     # choco install -y winpcap                # Requirement for wireshark (OBSOLETE)
#     # choco install -y wsl2                   # Windows subsystem for linux 2
# }

# function games_install {
#     choco install -y goggalaxy 
#     choco install -y leagueoflegends 
#     choco install -y steam 
#     choco install -y epicgameslauncher 
# }