########## ADS Analysis ##########

$MainFile = ".\[FILE]:[STREAM]"
$ADSFile = "[ADS_FILE]"
Set-Content $ADSFile -Encoding Byte -Value $MainFile
Format-Hex $ADSFile | Select-Object -First 10

########## General Analysis: IOCs ##########

$BaselineFolder = "C:\Investigation"
$ADSBaseline = @(Get-Content "$BaselineFolder\Alternate_Data_Streams\ADS.txt")
$ARPBaseline = @(Get-Content "$BaselineFolder\ARP_Cache\ARP_Cache.txt")
$CurrentProcessesBaseline = @(Get-Content "$BaselineFolder\Current_Processes\Current_Processes.txt")
$CurrentServicesBaseline = @(Get-Content "$BaselineFolder\Current_Services\Current_Services.txt")
$DNSCacheBaseline = @(Get-Content "$BaselineFolder\DNS_Cache\DNS_Cache.txt")
$ETCHostsBaseline = @(Get-Content "$BaselineFolder\ETC_Hosts\ETC_Hosts.txt")
$FilesBaseline = @(Get-Content "$BaselineFolder\Files\File_Names.txt")
$HKCUBaseline = @(Get-Content "$BaselineFolder\Registry\HKCU-Registry.txt")
$HKLMBaseline = @(Get-Content "$BaselineFolder\Registry\HKLM-Registry.txt")
$HKUBaseline = @(Get-Content "$BaselineFolder\Registry\HKU-Registry.txt")
$LocalGroupsBaseline = @(Get-Content "$BaselineFolder\Local_Groups\Local_Group_Members.txt")
$LocalUsersBaseline = @(Get-Content "$BaselineFolder\Local_Users\Local_Users.txt")
$NetworkConnectedProcessesBaseline = @(Get-Content "$BaselineFolder\Network_Connected_Processes\Network_Connected_Process_Names.txt")
$NetworkStatisticsBaseline = @(Get-Content "$BaselineFolder\Network_Statistics\Network_Statistics.txt")
$PrefetchFilesBaseline = @(Get-Content "$BaselineFolder\Prefetch_Files\Prefetch_Files.txt")
$ScheduledTasksBaseline = @(Get-Content "$BaselineFolder\Scheduled_Tasks\Scheduled_Tasks.txt")
$ShceduledTaskFilesBaseline = @(Get-Content "$BaselineFolder\Scheduled_Tasks\Scheduled_Task_Files.txt")
$SMBSharesBaseline = @(Get-Content "$BaselineFolder\SMB_Shares\SMB_Shares.txt")
$TrustedWinRMBaseline = @(Get-Content "$BaselineFolder\Trusted_WinRM\Trusted_WinRM.txt")

<#

########## Finish Writing this Section ##########

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

#>

########## Log Analysis: Privilege Escalation ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4728 -or $_.id -eq 4732 -or $_.id -eq 4756} | Select-Object -Last 1  | Select-Object -ExpandProperty message

########## Log Analysis: Password Changes ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4723 -or $_.id -eq 4724} | Select-Object -ExpandProperty message

########## Timeline Analysis ##########

Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.CreationTime -gt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(-2) -and $_.CreationTime -lt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(2)} | Select-Object FullName,CreationTime
