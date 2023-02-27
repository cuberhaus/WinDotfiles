# Functions here should have no logic, just shortcuts to other functions
# These should also not need any documentation
function aliases {
    # code $dotfiles\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    code $dotfiles\Documents\PowerShell\profile.ps1
    code $modules\my_git.psm1
    code $modules\my_rclone.psm1
    code $modules\my_shortcuts.psm1
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

Export-ModuleMember -Function *