function Test-Elevated {
    $wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
    $adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
    $prp.IsInRole($adm)
}
function update {
    choco upgrade all
    Get-WindowsUpdate
    Install-WindowsUpdate
}
function o {
    explorer .
}
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
function g {
    git $args
}
function vim {
    nvim $args
}

Import-Module git-aliases -DisableNameChecking

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
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
