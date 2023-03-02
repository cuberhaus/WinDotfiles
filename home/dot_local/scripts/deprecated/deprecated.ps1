function pull_old {
    <#
    .SYNOPSIS
    Pulls the latest changes from all Git repositories within the current directory and its subdirectories.

    .DESCRIPTION
    This function searches the current directory and its subdirectories for Git repositories and performs a "git pull" command to retrieve the latest changes from the remote repository.

    .PARAMETER Recurse
    If this switch is specified, the function will search for Git repositories in all subdirectories of the current directory.

    .EXAMPLE
    To pull the latest changes from Git repositories in the current directory, run the following command:
    pull

    .EXAMPLE
    To pull the latest changes from Git repositories in the current directory and its subdirectories, run the following command:
    pull -Recurse

    .NOTES
    Author: Pol Casacuberta
    Date: 21/02/2023
    #>
    param(
        [switch]$Recurse,
        [switch]$Help
    )

    if ($Help) {
        Get-Help pull -Full
        return
    }

    # Store the starting directory
    $startDirectory = (Get-Item -Path ".\").FullName

    # Set up a trap to ensure that the function returns to the starting directory if it is stopped by the user
    trap {
        Set-Location $startDirectory
        Write-Host "Function stopped by user. Returning to original directory." -ForegroundColor Yellow
        return
    }

    # Use Try-Catch to handle errors and return to the starting directory
    try {
        # If the -Recurse switch is specified, use the -Recurse parameter of Get-ChildItem
        if ($Recurse) {
            # Loop over all non-hidden directories in the current directory and its subdirectories
            Get-ChildItem -Directory -Recurse -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git pull
                    Set-Location $_.FullName
                    Write-Host "Pulling from $($_.FullName)" -ForegroundColor Green
                    git pull
                    Set-Location ..
                } 
            }
        }
        else {
            # Loop over all non-hidden directories in the current directory
            Get-ChildItem -Directory -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git pull
                    Set-Location $_.FullName
                    Write-Host "Pulling from $($_.FullName)" -ForegroundColor Green
                    git pull
                    Set-Location ..
                } 
            }
        }
    }
    catch {
        Write-Error $_
        Set-Location $startDirectory
    }

    # Return to the starting directory
    Set-Location $startDirectory
}

# Status -Recurse
# Perform a git status on all git repositories in the current directory
function status {
    <#
    .SYNOPSIS
    Displays the git status of all repositories in the current directory (and its subdirectories, if -Recurse is specified).

    .DESCRIPTION
    This function finds all git repositories in the current directory (and its subdirectories, if -Recurse is specified), and then displays the git status of each repository.

    .PARAMETER Recurse
    If specified, the function will also search for git repositories in subdirectories of the current directory.

    .EXAMPLE
    PS C:\Projects> status -Recurse
    Entering C:\Projects\Project1
    On branch main
    Your branch is up to date with 'origin/main'.

    nothing to commit, working tree clean
    Entering C:\Projects\Project2
    On branch feature/some-feature
    Your branch is up to date with 'origin/feature/some-feature'.

    nothing to commit, working tree clean
    ...

    .NOTES
    Author: Pol Casacuberta
    Date: 21/02/2023

    #>
    param(
        [switch]$Recurse,
        [switch]$Help
    )

    if ($Help) {
        Get-Help status -Full
        return
    }
    # Store the starting directory
    $startDirectory = (Get-Item -Path ".\").FullName

    # Set up a trap to ensure that the function returns to the starting directory if it is stopped by the user
    trap {
        Set-Location $startDirectory
        Write-Host "Function stopped by user. Returning to original directory." -ForegroundColor Yellow
        return
    }

    # Use Try-Catch to handle errors and return to the starting directory
    try {
        # If the -Recurse switch is specified, use the -Recurse parameter of Get-ChildItem
        if ($Recurse) {
            # Loop over all non-hidden directories in the current directory and its subdirectories
            Get-ChildItem -Directory -Recurse -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git status
                    Set-Location $_.FullName
                    Write-Host "Entering $($_.FullName)" -ForegroundColor Green
                    git status
                    Set-Location ..
                } 
            }
        }
        else {
            # Loop over all non-hidden directories in the current directory
            Get-ChildItem -Directory -Force | Where-Object { !$_.Name.StartsWith('.') } | ForEach-Object {
                # Check if the directory is a git repository
                if (Test-Path "$($_.FullName)\.git" -PathType Container) {
                    # Change into the directory and perform a git status
                    Set-Location $_.FullName
                    Write-Host "Entering $($_.FullName)" -ForegroundColor Green
                    git status
                    Set-Location ..
                } 
            }
        }
    }
    catch {
        Write-Error $_
        Set-Location $startDirectory
    }
    # Return to the starting directory
    Set-Location $startDirectory
}
