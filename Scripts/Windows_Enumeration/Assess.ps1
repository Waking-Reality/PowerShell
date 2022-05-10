########## Timeline Analysis ##########

Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.CreationTime -gt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(-2) -and $_.CreationTime -lt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(2)} | Select-Object FullName,CreationTime

########## Log Analysis: Privilege Escalation ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4728 -or $_.id -eq 4732 -or $_.id -eq 4756} | Select-Object -Last 1  | Select-Object -ExpandProperty message

########## Log Analysis: Password Changes ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4723 -or $_.id -eq 4724} | Select-Object -ExpandProperty message

$BaselineFolder = "[PATH]"
$FileBaseline = @(Get-Content "$BaselineFolder\files.txt")
$IPBaseline = @(Get-Content "$BaselineFolder\ips.txt")
$HKCUBaseline = @(Get-Content "$BaselineFolder\reg-hkcu.txt")
$HKLMBaseline = @(Get-Content "$BaselineFolder\reg-hklm.txt")
$HKUBaseline = @(Get-Content "$BaselineFolder\reg-hcu.txt")

foreach ($OtherConnectedHost in $OtherConnectedHosts) {

    New-Item C:\Investigation\$OtherConnectedHost\Found -ItemType Directory -Force

    Write-Host ""
    Write-Host "Looking for FILE IOCs from $OtherConnectedHost..." -BackgroundColor Black -ForegroundColor DarkGreen
    
    foreach ($File in $FileBaseline) {
        Get-Content C:\Investigation\$OtherConnectedHost\Files.txt | Select-String $File | Out-File C:\Investigation\$OtherConnectedHost\Found\Files.txt -Append
    }
    
    Write-Host "Looking for IP IOCs from $OtherConnectedHost..." -BackgroundColor Black -ForegroundColor DarkGreen
    
    foreach ($IP in $IPBaseline) {
            Get-Content C:\Investigation\$OtherConnectedHost\Network_Statistics.txt | Select-String $IP | Out-File C:\Investigation\$OtherConnectedHost\Found\IPs.txt -Append
    }
    
    Write-Host "Looking for HKCU IOCs from $OtherConnectedHost" -BackgroundColor Black -ForegroundColor DarkGreen
    
    foreach ($HKCU in $HKCUBaseline) {
        Get-Content C:\Investigation\$OtherConnectedHost\HKCU-Registry.txt | Select-String $HKCU | Out-File C:\Investigation\$OtherConnectedHost\Found\HKCU.txt -Append
    }

    Write-Host "Looking for HKLM IOCs from $OtherConnectedHost..." -BackgroundColor Black -ForegroundColor DarkGreen

    foreach ($HKLM in $HKLMBaseline) {
        Get-Content C:\Investigation\$OtherConnectedHost\HKCU-Registry.txt | Select-String $HKLM | Out-File C:\Investigation\$OtherConnectedHost\Found\HKLM.txt -Append
    }
}

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    Write-Host ""
    Write-Host "========== $OtherConnectedHost ==========" -BackgroundColor Black -ForegroundColor DarkYellow
    Write-Host ""
    Write-Host "===== FILES =====" -BackgroundColor Black -ForegroundColor DarkYellow
    Get-Content C:\Investigation\$OtherConnectedHost\Found\File_Names.txt
    Write-Host "===== IPS =====" -BackgroundColor Black -ForegroundColor DarkYellow
    Get-Content C:\Investigation\$OtherConnectedHost\Found\IPs.txt
    Write-Host "===== HKCU =====" -BackgroundColor Black -ForegroundColor DarkYellow
    Get-Content C:\Investigation\$OtherConnectedHost\Found\HKCU.txt
    Write-Host "===== HKLM =====" -BackgroundColor Black -ForegroundColor DarkYellow
    Get-Content C:\Investigation\$OtherConnectedHost\Found\HKLM.txt
}
