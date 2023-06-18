# This profile is only used by Microsoft PowerShell.
# $dotfiles = "C:\Users\polcg\WinDotfiles"
$dotfiles = "C:\Users\polcg\.local\share\chezmoi\home"
$scripts = "$HOME\.local\scripts"
$modules = "$HOME\.local\scripts\modules"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles # This is needed

Import-Module git-aliases -DisableNameChecking
Import-Module -Name "$modules\my_git.psm1"
Import-Module -Name "$modules\my_shortcuts.psm1"
Import-Module -Name "$modules\my_rclone.psm1"
Import-Module -Name "$modules\my_tools.psm1"
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
