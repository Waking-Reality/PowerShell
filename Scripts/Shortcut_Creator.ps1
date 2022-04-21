$FilePath = (Get-ChildItem "[SOURCEPATH]" -Recurse).FullName

foreach ($File in $FilePath)
    {
    $WScriptObj = New-Object -ComObject ("WScript.Shell")
    $ShortcutName = (Get-ChildItem "$File").BaseName
    $DestinationPath = "[PATH]"
    $Shortcut = $WscriptObj.CreateShortcut("$DestinationPath\$ShortcutName.lnk")
    $Shortcut.TargetPath = $File
    $Shortcut.Save()
    }
