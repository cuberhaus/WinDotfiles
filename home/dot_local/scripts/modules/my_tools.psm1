function Update-AppManagement {
    Try {
        $appManagementClass = Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" -ErrorAction Stop
        $appManagementClass | Invoke-CimMethod -MethodName UpdateScanMethod -ErrorAction Stop
    }
    Catch {
        Write-Error "Error updating app management: $($_.Exception.Message)"
    }
}

function Test-Admin {
    $windowsIdentity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $windowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($windowsIdentity)
    $isAdmin = [System.Security.Principal.WindowsBuiltInRole]::Administrator
    return $windowsPrincipal.IsInRole($isAdmin)
}

function Sync-Time {
    <#
    .SYNOPSIS
    Synchronizes the system time with the time server.

    .DESCRIPTION
    This function checks if the Windows Time service is running and starts it if necessary. It then synchronizes the system time with the time server.

    .EXAMPLE
    Sync-Time
    #>
    Try {
        $w32timeService = Get-Service -Name w32time -ErrorAction Stop
        if ($w32timeService.Status -ne 'Running') {
            Start-Service -Name w32time -ErrorAction Stop
        }
        w32tm /resync
    }
    Catch {
        Write-Error "Error synchronizing time: $($_.Exception.Message)"
    }
}

function update {
    Try {
        choco upgrade all -y
        Get-WindowsUpdate
        Install-WindowsUpdate
        vim +PlugUpgrade +PlugUpdate +qall
        winget upgrade --all
    }
    Catch {
        Write-Error "Error updating: $($_.Exception.Message)"
    }
}

function cleanup {
    Try {
        choco-cleaner
        vim +PlugClean +qall
    }
    Catch {
        Write-Error "Error cleaning up: $($_.Exception.Message)"
    }
}

Export-ModuleMember -Function *
