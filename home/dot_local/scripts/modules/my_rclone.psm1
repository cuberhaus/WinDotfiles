# Get the %APPDATA% path
$appDataPath = [Environment]::GetFolderPath('ApplicationData')

# Construct the Thunderbird profiles path
$drivePath = "drive:4 Archive/rcloneBackups"

$thunderbirdProfilesPath = Join-Path $appDataPath 'Thunderbird\Profiles'
$calibreLibraryPath = "$HOME\Calibre Library"
$ankiPath = Join-Path $appDataPath 'Anki2\'

# Rclone token might need to be refreshed (rclone config and reconfigure the remote)
function rclonepull_calibre {
    <#
    .SYNOPSIS
    Copies the Calibre library from Google Drive to the local machine.

    .DESCRIPTION
    This function uses rclone to copy the Calibre library from a remote Google Drive to the local machine. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepull_calibre
    #>
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Calibre/Calibre Library" $calibreLibraryPath
}
function rclonepush_calibre {
    <#
    .SYNOPSIS
    Copies the Calibre library from the local machine to Google Drive.

    .DESCRIPTION
    This function uses rclone to copy the Calibre library from the local machine to a remote Google Drive. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepush_calibre
    #>
    rclone copy -P --create-empty-src-dirs $calibreLibraryPath "$($drivePath)/Calibre/Calibre Library"
}
function rclonepull_thunderbird {
    <#
    .SYNOPSIS
    Copies Thunderbird data from Google Drive to the local machine.

    .DESCRIPTION
    This function uses rclone to copy Thunderbird data (profiles, settings, etc.) from a remote Google Drive to the local machine. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepull_thunderbird
    #>
    # rclone copy -P --create-empty-src-dirs drive:Thunderbird/ $HOME\Roaming\Thunderbird\
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Thunderbird/" $thunderbirdProfilesPath
}
function rclonepush_thunderbird {
    <#
    .SYNOPSIS
    Copies Thunderbird data from the local machine to Google Drive.

    .DESCRIPTION
    This function uses rclone to copy Thunderbird data (profiles, settings, etc.) from the local machine to a remote Google Drive. It creates empty source directories if necessary and shows progress during the copy.

    .EXAMPLE
    rclonepush_thunderbird
    #>
    rclone copy -P --create-empty-src-dirs $thunderbirdProfilesPath "$($drivePath)/Thunderbird/"
}

function rclone_sync_push_thunderbird {
    rclone sync -P --create-empty-src-dirs $thunderbirdProfilesPath "$($drivePath)/Thunderbird/"
}

function rclone_sync_push_calibre {
    rclone sync -P --create-empty-src-dirs $calibreLibraryPath "drive:Calibre/Calibre Library"
}

function rclonepull_anki {
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Anki/" $ankiPath
}
function rclonepush_anki {
    rclone copy -P --create-empty-src-dirs $ankiPath "$($drivePath)/Anki/"
}

function rclonepull_everything {
    Write-Host "Pulling Anki data..."
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Anki/" $ankiPath
    Write-Host "Pulling Thunderbird data..."
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Thunderbird/" $thunderbirdProfilesPath
    Write-Host "Pulling Calibre data..."
    rclone copy -P --create-empty-src-dirs "$($drivePath)/Calibre Library" $calibreLibraryPath
}

function rclonepush_everything {
    $title = "Confirmation"
    $message = "Are you sure you want to proceed? This could delete all your books, email configuration, and Anki cards."
    $choices = [System.Management.Automation.Host.ChoiceDescription[]]('&Yes', '&No')

    $choice = $Host.UI.PromptForChoice($title, $message, $choices, 1) # Default choice is "No"

    if ($choice -eq 0) { # 0 corresponds to the index of the '&Yes' choice
        Write-Host "Backiping up Anki data..."
        rclone sync -P --create-empty-src-dirs $ankiPath "$($drivePath)/Anki/"
        Write-Host "Backiping up Thunderbird data..."
        rclone sync -P --create-empty-src-dirs $thunderbirdProfilesPath "$($drivePath)/Thunderbird/"
        Write-Host "Backiping up Calibre data..."
        rclone copy -P --create-empty-src-dirs $calibreLibraryPath "$($drivePath)/Calibre Library"
    }
}

Export-ModuleMember -Function *