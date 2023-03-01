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

Export-ModuleMember -Function *