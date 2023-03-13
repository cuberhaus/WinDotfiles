function yolo {
    <#
    .SYNOPSIS
    Commits and pushes changes to a Git repository.

    .DESCRIPTION
    This function stages all changes, commits them with a placeholder message, and pushes them to the remote repository.

    .EXAMPLE
    yolo
    #>
    git add -A
    git commit -m "This is a placeholder"
    git push
}
function g {
    git $args
}
function gc() {
    git commit -m $args
}
function ga {
    git add $args
}
function gf {
    git fetch $args
}
function gm {
    git merge $args
}
function gp {
    git push $args
}
function gs {
    git status $args
}
function gsu {
    git submodule update --remote --recursive $args
}
function gitsync {
    <#
    .SYNOPSIS
    Synchronizes Git submodules.

    .DESCRIPTION
    This function synchronizes Git submodules by syncing and updating them recursively.

    .EXAMPLE
    gitsync
    #>
    git submodule sync
    git submodule update --init --recursive
}
function pull {
    <#
    .SYNOPSIS
    Performs a git pull in all directories containing a .git subdirectory.

    .PARAMETER depth
    The maximum depth to search for git repositories. Defaults to 2 if not provided.

    .DESCRIPTION
    This function searches for all directories containing a .git subdirectory and performs a git pull in each of them.

    .EXAMPLE
    pull -depth 3

    This example performs a git pull in all directories containing a .git subdirectory up to a maximum depth of 3.

    .NOTES
    Author: Pol Casacuberta
    #>
    param(
        [int]$depth = 2
    )
    Write-Host "depth: $depth" -ForegroundColor Green
    # Find all directories containing a .git subdirectory, and loop over them
    Get-ChildItem -Path . -Directory -Recurse -Force -Depth $depth -Filter ".git" | ForEach-Object {
        $dir = $_.FullName.Replace("\.git", "")
        # Change into the directory and perform a git pull in a subshell
        Write-Host "Pulling $dir" -ForegroundColor Green
        & cmd /c "cd `"$dir`" && git pull"
    }
}
function status {
    <#
    .SYNOPSIS
    Performs a git status in all directories containing a .git subdirectory.

    .PARAMETER depth
    The maximum depth to search for git repositories. Defaults to 2 if not provided.

    .DESCRIPTION
    This function searches for all directories containing a .git subdirectory and performs a git status in each of them.

    .EXAMPLE
    status -depth 3

    This example performs a git status in all directories containing a .git subdirectory up to a maximum depth of 3.

    .NOTES
    Author: Pol Casacuberta
    #>
    param(
        [int]$depth = 2
    )
    Write-Host "depth: $depth" -ForegroundColor Green
    # Find all directories containing a .git subdirectory, and loop over them
    Get-ChildItem -Path . -Directory -Recurse -Force -Depth $depth -Filter ".git" | ForEach-Object {
        $dir = $_.FullName.Replace("\.git", "")
        # Change into the directory and perform a git pull in a subshell
        Write-Host "Entering $dir" -ForegroundColor Green
        & cmd /c "cd `"$dir`" && git status"
    }
}
function absolute-yolo {
    <#
    .SYNOPSIS
    Performs a yolo in all directories containing a .git subdirectory.

    .PARAMETER depth
    The maximum depth to search for git repositories. Defaults to 2 if not provided.

    .DESCRIPTION
    This function searches for all directories containing a .git subdirectory and performs a yolo in each of them.

    .EXAMPLE
    status -depth 3

    This example performs a yolo in all directories containing a .git subdirectory up to a maximum depth of 3.

    .NOTES
    Author: Pol Casacuberta
    #>
    param(
        [int]$depth = 2
    )
    Write-Host "depth: $depth" -ForegroundColor Green
    # Find all directories containing a .git subdirectory, and loop over them
    Get-ChildItem -Path . -Directory -Recurse -Force -Depth $depth -Filter ".git" | ForEach-Object {
        $dir = $_.FullName.Replace("\.git", "")
        # Change into the directory and perform a git pull in a subshell
        Write-Host "Entering $dir" -ForegroundColor Green
        & cmd /c "cd `"$dir`" && git add -A && git commit -m "This is a placeholder" && git push"
    }
}

Export-ModuleMember -Function *