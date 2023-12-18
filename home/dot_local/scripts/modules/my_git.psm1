# At the beginning of your module/script
$originalWarningPreference = $WarningPreference
$WarningPreference = 'SilentlyContinue'

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
# Use this function to force push to the remote repository. It's useful when you have to rewrite the history of a branch, for example when you have to squash commits. Or amend the last commit to change the commit message. (yolo)
function gpf {
    git push --force-with-lease $args
}
function gs {
    git status $args
}
# function gsu {
#     git submodule update --remote --recursive $args
# }
function gsu {
    param(
        [int]$depth = 0,
        [Parameter(ValueFromRemainingArguments=$true)] [string[]]$args
    )
    git_recursive -cmd "git submodule update --remote --recursive $args" $depth
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
# Order doesn't matter like in C++, functions can be used before they are defined
function yolo {
    param(
        [int]$depth = 0
    )
    # It seems that the inner single quotes have to be double quotes escaped, otherwise the command won't work
    # git_recursive -cmd "git add -A && git commit -m 'This is a placeholder' && git push" -depth $depth
    git_recursive -cmd "git add -A ; git commit -m `"This is a placeholder`" ; git push" -depth $depth
}
function git_recursive {
    <#
    .SYNOPSIS
    Recursively performs a given Git command in all directories containing a .git subdirectory.

    .PARAMETER cmd
    The Git command to execute in each directory.

    .PARAMETER depth
    The maximum depth to search for git repositories. Defaults to 2 if not provided.

    .PARAMETER addKey
    If this switch is provided, it adds the SSH key before executing the Git command.

    .DESCRIPTION
    This function recursively searches for all directories containing a .git subdirectory up to a maximum depth, specified by the depth parameter. It then changes into each directory and executes the given Git command in a subshell. If the addKey switch is provided, it adds the SSH key before executing the Git command.

    .EXAMPLE
    git_recursive -cmd "git pull" -depth 3

    This example recursively executes "git pull" in all directories containing a .git subdirectory up to a maximum depth of 3.

    .NOTES
    Author: Pol Casacuberta
    #>
    param (
        [string]$cmd,
        [int]$depth = 2,
        [switch]$addKey
    )


    if ($addKey) {
        ssh-agent
        ssh-add ~/.ssh/imac
    }

    # This is needed because otherwise the function won't work within a Git repository inside a subdirectory, only in the root directory.
    if ($depth -lt 1) {
        Invoke-Expression $cmd
        # $cmd # Directly executing the command doesn't work for some reason
        return
    }

    Write-Host "depth: $depth" -ForegroundColor Green
    Write-Host "cmd: $cmd" -ForegroundColor Green

    Get-ChildItem -Path . -Directory -Recurse -Force -Depth $depth -Filter ".git" | ForEach-Object {
        $dir = $_.FullName.Replace("\.git", "")
        Write-Verbose -Message "Change into the directory and perform a git pull in a subshell" 
        Write-Host "Entering $dir" -ForegroundColor Green
        & cmd /c "cd `"$dir`" && $cmd "
    }
}
function pull {
    param(
        [int]$depth = 2
    )
    git_recursive "git pull" $depth
}
function status {
    param(
        [int]$depth = 2
    )
    git_recursive "git status" $depth
}
function fetch {
    param(
        [int]$depth = 2
    )
    git_recursive "git fetch" $depth
}
function merge {
    param(
        [int]$depth = 2
    )
    git_recursive "git merge" $depth
}
function gadd {
    param(
        [int]$depth = 2
    )
    git_recursive "git add -A" $depth
}
# Here, the args parameter is defined with the ValueFromRemainingArguments attribute set to $true. This means that any remaining arguments passed to the function will be captured and assigned to this parameter as an array of strings.
function commit {
    param(
        [int]$depth = 2,
        [Parameter(ValueFromRemainingArguments=$true)] [string[]]$args
    )
    git_recursive "git commit -m $args" $depth
}

Export-ModuleMember -Function *

# At the end of your module/script
$WarningPreference = $originalWarningPreference