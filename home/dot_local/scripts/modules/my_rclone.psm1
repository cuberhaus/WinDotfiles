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
    rclone copy -P --create-empty-src-dirs "drive:Calibre/Calibre Library" "$HOME\Calibre Library"
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
    rclone copy -P --create-empty-src-dirs "$HOME\Calibre Library" "drive:Calibre/Calibre Library"
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
    rclone copy -P --create-empty-src-dirs drive:Thunderbird/ $HOME\Roaming\Thunderbird\
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
    rclone copy -P --create-empty-src-dirs $HOME\AppData\Roaming\Thunderbird\ drive:Thunderbird/
}

Export-ModuleMember -Function *