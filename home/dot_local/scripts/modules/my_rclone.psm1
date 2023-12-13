# Get the %APPDATA% path
$appDataPath = [Environment]::GetFolderPath('ApplicationData')

# Construct the Thunderbird profiles path
$thunderbirdProfilesPath = Join-Path $appDataPath 'Thunderbird\Profiles'
$calibreLibraryPath = "$HOME\Calibre Library"

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
    rclone copy -P --create-empty-src-dirs "drive:Calibre/Calibre Library" $calibreLibraryPath
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
    rclone copy -P --create-empty-src-dirs $calibreLibraryPath "drive:Calibre/Calibre Library"
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
    rclone copy -P --create-empty-src-dirs drive:Thunderbird/ $thunderbirdProfilesPath
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
    rclone copy -P --create-empty-src-dirs $thunderbirdProfilesPath drive:Thunderbird/
}

Export-ModuleMember -Function *