function update {
    Try {
        choco upgrade all -y --except='openjdk, pycharm, octave.portable'
        Get-WindowsUpdate
        Install-WindowsUpdate
    }
    Catch {
        Write-Error "Error updating: $($_.Exception.Message)"
    }
}
function Add-ToSystemPath {
    param (
        [string]$NewPath
    )

    # Get the current system PATH environment variable
    $currentPath = [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine)

    # Add the new path to the current PATH, if it's not already included
    if ($currentPath -notcontains $NewPath) {
        $newPathValue = $currentPath + ";" + $NewPath

        # Set the new PATH environment variable
        [Environment]::SetEnvironmentVariable("Path", $newPathValue, [EnvironmentVariableTarget]::Machine)
    }
    else {
        Write-Host "The path is already in the system PATH."
    }
}

function updateall {
    Try {
        choco upgrade all -y --except='openjdk, pycharm, octave.portable'
        Get-WindowsUpdate
        Install-WindowsUpdate
        vim +PlugUpgrade +PlugUpdate +qall
        # winget upgrade --all
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
# Simple function to start a new elevated process. If arguments are supplied then 
# a single command is started with admin rights; if not then a new admin instance
# of PowerShell is started.
function admin
{
    if ($args.Count -gt 0)
    {   
       $argList = "& '" + $args + "'"
       Start-Process wt -Verb runAs -ArgumentList $argList
    }
    else
    {
       Start-Process wt -Verb runAs
    }
}
# function clone-all {
#     # gh repo list myorgname --limit 1000 | while read -r repo _; do
#     # gh repo clone "$repo" "$repo"
#     # done
#     $orgName = "cuberhaus"
#     $repos = gh repo list $orgName --limit 1000
#     foreach ($repo in $repos) {
#         $repoName = $repo.Split()[0]
#         Write-Host $repoName
#         gh repo clone $repoName
#     }
# }

function Clone-All {
    param (
        [string]$orgName = "cuberhaus"
    )

    # Get the list of repositories from the GitHub organization
    $repos = gh repo list $orgName --limit 1000 | Out-String -Stream

    foreach ($repo in $repos) {
        $repoName = $repo.Split()[0]
        Write-Host "Cloning $repoName..."
        gh repo clone $repoName
    }
}

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

Export-ModuleMember -Function *
