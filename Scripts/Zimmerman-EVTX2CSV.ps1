# Convert .evtx files recursively in folder and export them as .csv with Eric Zimmerman Tools

$Date = Get-Date -Format ddMMMyyyy
$FilePath = "C:\Users\%USERNAME%\Downloads\Logs"
$Files = Get-ChildItem $FilePath -Include *.evtx -Recurse
$Output = "C:\Users\%USERNAME%\Downloads\$Date"
$Event = "%EVENT NAME%"
$Combined = "$Event" + " - " + "combined.csv"

New-Item -Path "C:\Users\%USERNAME%\Downloads\$Date" -ItemType Directory

C:\Users\%USERNAME%\Downloads\Get-ZimmermanTools\net6\EvtxeCmd\EvtxECmd.exe -d $FilePath --csv $Output --csvf $Combined

foreach ($EVTX in $Files) {
    Write-Host $EVTX.Name
    $Name = $EVTX.BaseName
    $FullPath = $EVTX.FullName
    $CSV = "$Event" + " - " + "$Name" + ".csv"
    C:\Users\%USERNAME%\Downloads\Get-ZimmermanTools\net6\EvtxeCmd\EvtxECmd.exe -f "$FullPath" --csv "$Output" --csvf $CSV
    }
