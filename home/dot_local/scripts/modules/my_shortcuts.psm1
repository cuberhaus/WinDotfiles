# Functions here should have no logic, just shortcuts to other functions
# These should also not need any documentation
function aliases {
    ce $HOME\Documents\PowerShell\profile.ps1 $HOME\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1 $HOME\OneDrive\Documentos\PowerShell\profile.ps1  $modules\my_git.psm1 $modules\my_rclone.psm1 $modules\my_shortcuts.psm1 $modules\my_tools.psm1 
}
function check_sleep {
    powercfg /a 
}

function battery {
    powercfg /batteryreport /output ".\battery-report.html"
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
function n { notepad $args }
function o {
    explorer .
}
function cr {
    Set-Location $HOME/repos
}

# Never get ls wrong again
function la{
    Get-ChildItem $args
}
function sl{
    Get-ChildItem $args
}
function ll{
    Get-ChildItem $args
}
function l{
    Get-ChildItem $args
}
function s{
    Get-ChildItem $args
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
