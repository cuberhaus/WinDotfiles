# This profile is only used by Microsoft PowerShell.
# $dotfiles = "C:\Users\polcg\WinDotfiles"
$dotfiles = "C:\Users\polcg\.local\share\chezmoi\home"
$scripts = "$HOME\.local\scripts"
$modules = "$HOME\.local\scripts\modules"
# https://github.com/ralish/PSDotFiles
$DotFilesPath = $dotfiles # This is needed
function storeUpdate {
    Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
}
function Test-Elevated {
    $wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
    $adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
    $prp.IsInRole($adm)
}
function syncTime {
    <#
    .SYNOPSIS
    Synchronizes the system time with the time server.

    .DESCRIPTION
    This function checks if the Windows Time service is running and starts it if necessary. It then synchronizes the system time with the time server.

    .EXAMPLE
    syncTime
    #>
    # Check if the Windows Time service is running
    $service = Get-Service -Name w32time
    if ($service.Status -ne 'Running') {
        # If the service is not running, start it
        Start-Service -Name w32time
    }
    # Synchronize the time
    w32tm /resync
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

# GIT
Import-Module git-aliases -DisableNameChecking
Import-Module -Name "$modules\my_shortcuts.psm1"
Import-Module -Name "$modules\my_rclone.psm1"
Import-Module -Name "$modules\my_git.psm1"
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
