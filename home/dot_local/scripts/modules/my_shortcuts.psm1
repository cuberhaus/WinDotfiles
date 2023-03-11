# Functions here should have no logic, just shortcuts to other functions
# These should also not need any documentation
function aliases {
    # code $dotfiles\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    ce $HOME\Documents\PowerShell\profile.ps1 $modules\my_git.psm1 $modules\my_rclone.psm1 $modules\my_shortcuts.psm1 $modules\my_tools.psm1
}
function vimrc {
    ce $dotfiles\_vimrc
}
function windows {
    ce $scripts\windows.ps1
}
function win {
    ce $scripts\windows.ps1
}
# Quick shortcut to start notepad
function n { notepad $args }
function o {
    explorer .
}
function cr {
    Set-Location $HOME/repos
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
function ce {
    chezmoi edit --apply $args
}

Export-ModuleMember -Function *