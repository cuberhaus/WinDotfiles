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
    cvim $dotfiles\_vimrc
}
function windows {
    cvim $scripts\windows.ps1
}
function win {
    cvim $scripts\windows.ps1
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

function c {
    chezmoi $args
}
function vim {
    nvim $args
}
# This will open the file in vim and apply the changes to the home directory as well as the source file
function cvim {
    chezmoi edit --apply $args
}

Export-ModuleMember -Function *