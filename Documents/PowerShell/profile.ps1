# This profile is only used by Microsoft PowerShell.
# $dotfiles = "C:\Users\polcg\WinDotfiles"
$dotfiles = "C:\Users\polcg\.local\share\chezmoi"
$scripts = "$dotfiles\dot_local\scripts"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles # This is needed
function storeUpdate {
    Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
}
function syncTime {
    <#
    .SYNOPSIS
    Synchronizes the system time with the time server.

    .DESCRIPTION
    This function checks if the Windows Time service is running and starts it if necessary. It then synchronizes the system time with the time server.

    .EXAMPLE
    syncTime
    #>
    # Check if the Windows Time service is running
    $service = Get-Service -Name w32time
    if ($service.Status -ne 'Running') {
        # If the service is not running, start it
        Start-Service -Name w32time
    }
    # Synchronize the time
    w32tm /resync
}

# Rclone token might need to be refreshed (rclone config and reconfigure the remote)
function rclonepull_calibre {
    <#
    .SYNOPSIS
    Copies the Calibre library from Google Drive to the local machine.

    .DESCRIPTION
    This function uses rclone to copy the Calibre library from a remote Google Drive to the local machine. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepull_calibre
    #>
    rclone copy -P --create-empty-src-dirs "drive:Calibre/Calibre Library" "C:\Users\polcg\Calibre Library"
}
function rclonepush_calibre {
    <#
    .SYNOPSIS
    Copies the Calibre library from the local machine to Google Drive.

    .DESCRIPTION
    This function uses rclone to copy the Calibre library from the local machine to a remote Google Drive. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepush_calibre
    #>
    rclone copy -P --create-empty-src-dirs "C:\Users\polcg\Calibre Library" "drive:Calibre/Calibre Library"
}
function rclonepull_thunderbird {
    <#
    .SYNOPSIS
    Copies Thunderbird data from Google Drive to the local machine.

    .DESCRIPTION
    This function uses rclone to copy Thunderbird data (profiles, settings, etc.) from a remote Google Drive to the local machine. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepull_thunderbird
    #>
    rclone copy -P --create-empty-src-dirs drive:Thunderbird/ C:\Users\polcg\AppData\Roaming\Thunderbird\
}
function rclonepush_thunderbird {
    <#
    .SYNOPSIS
    Copies Thunderbird data from the local machine to Google Drive.

    .DESCRIPTION
    This function uses rclone to copy Thunderbird data (profiles, settings, etc.) from the local machine to a remote Google Drive. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepush_thunderbird
    #>
    rclone copy -P --create-empty-src-dirs C:\Users\polcg\AppData\Roaming\Thunderbird\ drive:Thunderbird/
}
function aliases {
    # code $dotfiles\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    code $dotfiles\Documents\PowerShell\profile.ps1
}

function vimrc {
    vim $dotfiles\_vimrc
}
function windows {
    vim $scripts\windows.ps1
}
function win {
    vim $scripts\windows.ps1
}
# Quick shortcut to start notepad
function n { notepad $args }
function Test-Elevated {
    $wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
    $adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
    $prp.IsInRole($adm)
}
function update {
    choco upgrade all -y
    Get-WindowsUpdate
    Install-WindowsUpdate
    vim +PlugUpgrade +PlugUpdate +qall
    winget upgrade --all
}
function cleanup {
    choco-cleaner
    vim +PlugClean +qall
}
function o {
    explorer .
}

# Navegation "cd"
function .. {
    Set-Location ..
}
function ... {
    Set-Location ../..
}
function .... {
    Set-Location ../../..
}
function ..... {
    Set-Location ../../../..
}
# clear
function c {
    Clear-Host
}
function vim {
    nvim $args
}

# GIT
Import-Module git-aliases -DisableNameChecking

function yolo {
    <#
    .SYNOPSIS
    Commits and pushes changes to a Git repository.

    .DESCRIPTION
    This function stages all changes, commits them with a placeholder message, and pushes them to the remote repository.

    .EXAMPLE
    yolo
    #>
    git add -A
    git commit -m "This is a placeholder"
    git push
}
function g {
    git $args
}
function gc() {
    git commit -m $args
}
function ga {
    git add $args
}
function gf {
    git fetch $args
}
function gm {
    git merge $args
}
function gp {
    git push $args
}
function gs {
    git status $args
}
function gsu {
    git submodule update --remote --recursive $args
}
function gitsync {
    <#
    .SYNOPSIS
    Synchronizes Git submodules.

    .DESCRIPTION
    This function synchronizes Git submodules by syncing and updating them recursively.

    .EXAMPLE
    gitsync
    #>
    git submodule sync
    git submodule update --init --recursive
}
# Perform a git pull on all git repositories in the current directory
function pull {
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
    # Return to the starting directory
    Set-Location $startDirectory
}

Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
    Import-Module "$ChocolateyProfile"
}
