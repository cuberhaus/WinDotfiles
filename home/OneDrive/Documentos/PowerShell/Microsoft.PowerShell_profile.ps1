# This profile is only used by Microsoft PowerShell.
# $dotfiles = "C:\Users\polcg\WinDotfiles"
$dotfiles = "C:\Users\polcg\.local\share\chezmoi\home"
$scripts = "$HOME\.local\scripts"
$modules = "$HOME\.local\scripts\modules"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles # This is needed

# Find out if the current user identity is elevated (has admin rights)
$identity = [Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object Security.Principal.WindowsPrincipal $identity
$isAdmin = $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

Import-Module git-aliases -DisableNameChecking
Import-Module -DisableNameChecking -Name "$modules\my_git.psm1"
Import-Module -DisableNameChecking -Name "$modules\my_shortcuts.psm1"
Import-Module -DisableNameChecking -Name "$modules\my_rclone.psm1"
Import-Module -DisableNameChecking -Name "$modules\my_tools.psm1"
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

# ALIASES MUST GO AFTER MODULE IMPORTS AND CAN'T GO INSIDE MODULES
# Set UNIX-like aliases for the admin command, so sudo <command> will run the command
# with elevated rights. 
Set-Alias -Name su -Value admin
Set-Alias -Name sudo -Value admin

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
    Import-Module "$ChocolateyProfile"
}
