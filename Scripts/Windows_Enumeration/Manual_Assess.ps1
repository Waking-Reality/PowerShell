########## SETUP ########## 

<#

$OtherConnectedHost = [IPADDRESS] 

# Only needed if you are running this script manually on a host.

#>

New-Item C:\Investigation\$OtherConnectedHost\Found -ItemType Directory

########## Alternate Data Streams: Contents ##########

$MainFile = ".\[FILE]:[STREAM]"
$ADSFile = "[ADS_FILE]"
Set-Content $ADSFile -Encoding Byte -Value $MainFile
Format-Hex $ADSFile | Select-Object -First 10

########## File Grep +5 ##########

Get-Content [FILE] | Select-String -Pattern "[STRING]" -Context 0,4

# Change the '4' to whatever number you like as this controls how many lines following your search.
# Negative numbers do not seem to work in this case.

########## General Analysis Loops ##########

##### Alternate Data Streams #####

$ADSRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Alternate_Data_Streams\ADS.txt")
$ADSBaseline = @(Get-Content [ADS_BASELINE])
foreach ($IOC in $ADSBaseline) {
	$ADSRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ADS.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Address Resolution Protocol #####

$ARPRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\ARP_Cache\ARP_Cache.txt")
$ARPBaseline = @(Get-Content [ARP_BASELINE])
foreach ($IOC in $ARPBaseline) {
	$ARPRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ARP.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Current Processes #####

$CurrentProcessesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Current_Processes\Current_Processes.txt")
$CurrentProcessesBaseline = @(Get-Content [CURRENTPROCESSES_BASELINE])
foreach ($IOC in $CurrentProcessesBaseline) {
	$CurrentProcessesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Current_Processes.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Current Services #####

$CurrentServicesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Current_Services\Current_Services.txt")
$CurrentServicesBaseline = @(Get-Content [CURRENTSERVICES_BASELINE])
foreach ($IOC in $CurrentServicesBaseline) {
	$CurrentServicesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Current_Services.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Domain Name Service Cache #####

$DNSCacheRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\DNS_Cache\DNS_Cache.txt")
$DNSCacheBaseline = @(Get-Content [DNSCACHE_BASELINE])
foreach ($IOC in $DNSCacheBaseline) {
	$DNSCacheRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\DNS_Cache.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### ETC Hosts File #####

$ETCHostsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\ETC_Hosts\ETC_Hosts.txt")
$ETCHostsBaseline = @(Get-Content [ETCHOSTS_BASELINE])
foreach ($IOC in $ETCHostsBaseline) {
	$ETCHostsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\ETC_Hosts.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### General Files #####

$FileNamesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Files\File_Names.txt")
$FileNamesBaseline = @(Get-Content [FILENAMES_BASELINE])
foreach ($IOC in $FileNamesBaseline) {
	$FileNamesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\File_Names.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### HKCU Registry #####

$HKCURemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKCU-Registry.txt")
$HKCUBaseline = @(Get-Content [HKCU_BASELINE])
foreach ($IOC in $HKCUBaseline) {
	$HKCURemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKCU-Registry.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### HKLM Registry #####

$HKLMRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKLM-Registry.txt")
$HKLMBaseline = @(Get-Content [HKLM_BASELINE])
foreach ($IOC in $HKLMBaseline) {
	$HKLMRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKLM-Registry.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### HKU Registry #####

$HKURemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Registry\HKU-Registry.txt")
$HKUBaseline = @(Get-Content [HKU_BASELINE])
foreach ($IOC in $HKUBaseline) {
	$HKURemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\HKU-Registry.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Local Group Members #####

$LocalGroupsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Local_Groups\Local_Group_Members.txt")
$LocalGroupsBaseline = @(Get-Content [LOCALGROUPS_BASELINE])
foreach ($IOC in $LocalGroupsBaseline) {
	$LocalGroupsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Local_Group_Members.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Local Users #####

$LocalUsersRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Local_Users\Local_Users.txt")
$LocalUsersBaseline = @(Get-Content [LOCALUSERS_BASELINE])
foreach ($IOC in $LocalUsersBaseline) {
	$LocalUsersRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Local_Users.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Network Connected Processes #####

$NetworkConnectedProcessesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Network_Connected_Processes\Network_Connected_Process_Names.txt")
$NetworkConnectedProcessesBaseline = @(Get-Content [NETWORKCONNECTEDPROCESSES_BASELINE])
foreach ($IOC in $NetworkConnectedProcessesBaseline) {
	$NetworkConnectedProcessesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Network_Connected_Process_Names.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Network Statistics #####

$NetworkStatisticsRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Network_Statistics\Network_Statistics.txt")
$NetworkStatisticsBaseline = @(Get-Content [NETWORKSTATISTICS_BASELINE])
foreach ($IOC in $NetworkStatisticsBaseline) {
	$NetworkStatisticsRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Network_Statistics.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Prefetch Files #####

$PrefetchFilesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Prefetch_Files\Prefetch_Files.txt")
$PrefetchBaseline = @(Get-Content [PREFETCHFILES_BASELINE])
foreach ($IOC in $PrefetchFilesBaseline) {
	$PrefetchFilesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Prefetch_Files.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Scheduled Tasks #####

$ScheduledTasksRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Scheduled_Tasks\Scheduled_Tasks.txt")
$ScheduledTasksBaseline = @(Get-Content [SCHEDULEDTASKS_BASELINE])
foreach ($IOC in $ScheduledTasksBaseline) {
	$ScheduledTasksRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Scheduled_Tasks.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Scheduled Task Files #####

$ScheduledTaskFilesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Scheduled_Tasks\Scheduled_Task_Files.txt")
$ScheduledTaskFilesBaseline = @(Get-Content [SCHEDULEDTASKFILES_BASELINE])
foreach ($IOC in $ScheduledTaskFilesBaseline) {
	$ScheduledTaskFilesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Scheduled_Task_Files.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Server Message Block Shares #####

$SMBSharesRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\SMB_Shares\SMB_Shares.txt")
$SMBSharesBaseline = @(Get-Content [SMBSHARES_BASELINE])
foreach ($IOC in $SMBSharesBaseline) {
	$SMBSharesRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\SMB_Shares.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

##### Trusted Windows Remote Management Clients #####

$TrustedWinRMRemote = (Get-Content "C:\Investigation\$OtherConnectedHost\Trusted_WinRM\Trusted_WinRM.txt")
$TrustedWinRMBaseline = @(Get-Content [TRUSTEDWINRM_BASELINE])
foreach ($IOC in $TrustedWinRMBaseline) {
	$TrustedWinRMRemote | Select-String $IOC | Out-File C:\Investigation\$OtherConnectedHost\Found\Trusted_WinRM.txt -Append
}

Start-Process C:\Investigation\$OtherConnectedHost\Found

########## Hex Dump ##########

Format-Hex [FILE] | Select-Object -First 10

########## Log Analysis: Privilege Escalation ##########

Get-WinEvent -Path "C:\Investigation\Event_Logs\Security.evtx" -Oldest | Where-Object {$_.id -eq 4728 -or $_.id -eq 4732 -or $_.id -eq 4756} | Select-Object -Last 1  | Select-Object -ExpandProperty message

########## Log Analysis: Password Changes ##########

Get-WinEvent -Path "C:\Investigation\Event_Logs\Security.evtx" -Oldest | Where-Object {$_.id -eq 4723 -or $_.id -eq 4724} | Select-Object -ExpandProperty message

########## Timeline Analysis ##########

Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.CreationTime -gt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(-2) -and $_.CreationTime -lt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(2)} | Select-Object FullName,CreationTime
