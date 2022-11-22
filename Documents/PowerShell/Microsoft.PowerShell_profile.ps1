# This profile is only used by Microsoft PowerShell.
$dotfiles = "C:\Users\polcg\WinDotfiles\dotfiles\"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles

# Rclone token might need to be refreshed (rclone config and reconfigure the remote)
function rclonepull_calibre {
    rclone sync -P --create-empty-src-dirs "drive:Calibre/Calibre Library" "C:\Users\polcg\Calibre Library"
}
function rclonepush_calibre {
    rclone  sync -P --create-empty-src-dirs "C:\Users\polcg\Calibre Library" "drive:Calibre/Calibre Library"
}
function rclonepull_thunderbird {
    rclone sync -P --create-empty-src-dirs drive:Thunderbird/ C:\Users\polcg\AppData\Roaming\Thunderbird\
}
function rclonepush_thunderbird {
    rclone sync -P --create-empty-src-dirs C:\Users\polcg\AppData\Roaming\Thunderbird\ drive:Thunderbird/
}
function aliases {
    # code $dotfiles\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    code $dotfiles\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
}

# function ycminstall {
#     $dotfiles\bin\ycm.ps1
# }

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

Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
