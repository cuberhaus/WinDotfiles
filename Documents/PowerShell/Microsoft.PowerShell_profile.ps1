$dotfiles = "C:\Users\polcg\WinDotfiles\dotfiles\"

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
    vim +PlugClean +qall
}

function o {
    explorer .
}

# Navegation
function .. {
    cd ..
}
function ... {
    cd ../..
}
function .... {
    cd ../../..
}
function ..... {
    cd ../../../..
}

function c {
    clear
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
