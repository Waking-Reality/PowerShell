########## Local ADS Analysis ##########

$MainFile = ".\[FILE]:[STREAM]"
$ADSFile = "[ADS_FILE]"
Set-Content $ADSFile -Encoding Byte -Value $MainFile
Format-Hex $ADSFile | Select-Object -First 10

########## General Analysis: IOCs ##########

$OtherConnectedHost = [IPADDRESS]

New-Item C:\Investigation\$OtherConnectedHost\Found -ItemType Directory

$ADSRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Alternate_Data_Streams\ADS.txt")
$ADSBaseline = @(Get-Content [ADS_BASELINE])
foreach ($IOC in $ADSBaseline) {
	Get-Content $ADSRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ADS.txt -Append
}
$ARPRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\ARP_Cache\ARP_Cache.txt")
$ARPBaseline = @(Get-Content [ARP_BASELINE])
foreach ($IOC in $ARPBaseline) {
	Get-Content $ARPRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ARP.txt -Append
}
$CurrentProcessesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Current_Processes\Current_Processes.txt")
$CurrentProcessesBaseline = @(Get-Content [CURRENTPROCESSES_BASELINE])
foreach ($IOC in $CurrentProcessesBaseline) {
	Get-Content $CurrentProcessesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Current_Processes.txt -Append
}
$CurrentServicesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Current_Services\Current_Services.txt")
$CurrentServicesBaseline = @(Get-Content [CURRENTSERVICES_BASELINE])
foreach ($IOC in $CurrentServicesBaseline) {
	Get-Content $CurrentServicesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Current_Processes.txt -Append
}
$DNSCacheRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\DNS_Cache\DNS_Cache.txt")
$DNSCacheBaseline = @(Get-Content [DNSCACHE_BASELINE])
foreach ($IOC in $DNSCacheBaseline) {
	Get-Content $DNSCacheRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\DNS_Cache.txt -Append
}
$ETCHostsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\ETC_Hosts\ETC_Hosts.txt")
$ETCHostsBaseline = @(Get-Content [ETCHOSTS_BASELINE])
foreach ($IOC in $ETCHostsBaseline) {
	Get-Content $ETCHostsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ETC_Hosts.txt -Append
}
$FileNamesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Files\File_Names.txt")
$FileNamesBaseline = @(Get-Content [FILENAMES_BASELINE])
foreach ($IOC in $FileNamesBaseline) {
	Get-Content $FileNamesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\File_Names.txt -Append
}
$HKCURemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKCU-Registry.txt")
$HKCUBaseline = @(Get-Content [HKCU_BASELINE])
foreach ($IOC in $HKCUBaseline) {
	Get-Content $HKCURemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKCU-Registry.txt -Append
}
$HKLMRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKLM-Registry.txt")
$HKLMBaseline = @(Get-Content [HKLM_BASELINE])
foreach ($IOC in $HKLMBaseline) {
	Get-Content $HKLMRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKLM-Registry.txt -Append
}
$HKURemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKU-Registry.txt")
$HKUBaseline = @(Get-Content [HKU_BASELINE])
foreach ($IOC in $HKUBaseline) {
	Get-Content $HKURemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKU-Registry.txt -Append
}
$LocalGroupsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Local_Groups\Local_Group_Members.txt")
$LocalGroupsBaseline = @(Get-Content [LOCALGROUPS_BASELINE])
foreach ($IOC in $LocalGroupsBaseline) {
	Get-Content $LocalGroupsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Local_Group_Members.txt -Append
}
$LocalUsersRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Local_Users\Local_Users.txt")
$LocalUsersBaseline = @(Get-Content [LOCALUSERS_BASELINE])
foreach ($IOC in $LocalUsersBaseline) {
	Get-Content $LocalUsersRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Local_Users.txt -Append
}
$NetworkConnectedProcessesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Network_Connected_Processes\Network_Connected_Process_Names.txt")
$NetworkConnectedProcessesBaseline = @(Get-Content [NETWORKCONNECTEDPROCESSES_BASELINE])
foreach ($IOC in $NetworkConnectedProcessesBaseline) {
	Get-Content $NetworkConnectedProcessesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Network_Connected_Process_Names.txt -Append
}
$NetworkStatisticsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Network_Statistics\Network_Statistics.txt")
$NetworkStatisticsBaseline = @(Get-Content [NETWORKSTATISTICS_BASELINE])
foreach ($IOC in $NetworkStatisticsBaseline) {
	Get-Content $NetworkStatisticsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Network_Statistics.txt -Append
}
$PrefetchFilesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Prefetch_Files\Prefetch_Files.txt")
$PrefetchBaseline = @(Get-Content [PREFETCHFILES_BASELINE])
foreach ($IOC in $PrefetchFilesBaseline) {
	Get-Content $PrefetchFilesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Prefetch_Files.txt -Append
}
$ScheduledTasksRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Scheduled_Tasks\Scheduled_Tasks.txt")
$ScheduledTasksBaseline = @(Get-Content [SCHEDULEDTASKS_BASELINE])
foreach ($IOC in $ScheduledTasksBaseline) {
	Get-Content $ScheduledTasksRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Scheduled_Tasks.txt -Append
}
$ScheduledTaskFilesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Scheduled_Tasks\Scheduled_Task_Files.txt")
$ScheduledTaskFilesBaseline = @(Get-Content [SCHEDULEDTASKFILES_BASELINE])
foreach ($IOC in $ScheduledTaskFilesBaseline) {
	Get-Content $ScheduledTaskFilesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Scheduled_Task_Files.txt -Append
}
$SMBSharesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\SMB_Shares\SMB_Shares.txt")
$SMBSharesBaseline = @(Get-Content [SMBSHARES_BASELINE])
foreach ($IOC in $SMBSharesBaseline) {
	Get-Content $SMBSharesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\SMB_Shares.txt -Append
}
$TrustedWinRMRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Trusted_WinRM\Trusted_WinRM.txt")
$TrustedWinRMBaseline = @(Get-Content [TRUSTEDWINRM_BASELINE])
foreach ($IOC in $TrustedWinRMBaseline) {
	Get-Content $TrustedWinRMRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Trusted_WinRM.txt -Append
}

########## Log Analysis: Privilege Escalation ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4728 -or $_.id -eq 4732 -or $_.id -eq 4756} | Select-Object -Last 1  | Select-Object -ExpandProperty message

########## Log Analysis: Password Changes ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4723 -or $_.id -eq 4724} | Select-Object -ExpandProperty message

########## Timeline Analysis ##########

Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.CreationTime -gt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(-2) -and $_.CreationTime -lt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(2)} | Select-Object FullName,CreationTime
