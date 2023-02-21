# This profile is only used by Microsoft PowerShell.
$dotfiles = "C:\Users\polcg\WinDotfiles\"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles
function storeUpdate{
    Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
}
function syncTime {
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
    rclone copy -P --create-empty-src-dirs "drive:Calibre/Calibre Library" "C:\Users\polcg\Calibre Library"
}
function rclonepush_calibre {
    rclone copy -P --create-empty-src-dirs "C:\Users\polcg\Calibre Library" "drive:Calibre/Calibre Library"
}
function rclonepull_thunderbird {
    rclone copy -P --create-empty-src-dirs drive:Thunderbird/ C:\Users\polcg\AppData\Roaming\Thunderbird\
}
function rclonepush_thunderbird {
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
    vim $dotfiles\bin\windows.bat
}
function win {
    vim $dotfiles\bin\windows.bat
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
    git submodule sync
    git submodule update --init --recursive
}
# Perform a git pull on all git repositories in the current directory
function pull{
    # Loop over all items in the current directory
    Get-ChildItem -Force | ForEach-Object {
        # Check if the item is a directory
        if ($_.PSIsContainer) {
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

# Perform a git status on all git repositories in the current directory
function status{
    # Loop over all items in the current directory
    Get-ChildItem -Force | ForEach-Object {
        # Check if the item is a directory
        if ($_.PSIsContainer) {
            # Check if the directory is a git repository
            if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                # Change into the directory and perform a git pull
                Set-Location $_.FullName
                Write-Host "Entering $($_.FullName)" -ForegroundColor Green
                git status
                Set-Location ..
            } 
        }
    }
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
