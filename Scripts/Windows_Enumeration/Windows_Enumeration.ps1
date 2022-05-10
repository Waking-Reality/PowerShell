$FormatEnumerationLimit = -1

##### Remove the Investigation Folder #####

Remove-Item C:\Investigation -Force -Recurse -ErrorAction SilentlyContinue

##### Create the Investigation Folder #####

New-Item C:\Investigation -ItemType Directory -Force -ErrorAction SilentlyContinue

##### Alternate Data Streams ##### ****************************

New-Item C:\Investigation\Alternate_Data_Streams -ItemType Directory -Force -ErrorAction SilentlyContinue
(((Get-ChildItem C:\Users -Recurse -ErrorAction SilentlyContinue).FullName | ForEach-Object {Get-Item $_ -Stream * -ErrorAction SilentlyContinue}) | Where-Object {$_.Stream -ne ':$DATA'} | Where-Object {$_.Stream -ne 'Zone.Identifier'}) | Format-Table PSPath -AutoSize -HideTableHeaders | Out-File C:\Investigation\Alternate_Data_Streams\ADS.txt

##### ARP Cache #####

New-Item C:\Investigation\ARP_Cache -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-NetNeighbor | Select-Object IPAddress,LinkLayerAddress,State -Unique | Out-File C:\Investigation\ARP_Cache\ARP_Cache.txt

##### Current Processes #####

New-Item C:\Investigation\Current_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Process | Select-Object Name,Path -Unique | Out-File C:\Investigation\Current_Processes\Current_Processes.txt

##### Current Services #####

New-Item C:\Investigation\Current_Services -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-WmiObject -Class Win32_Service | Select-Object DisplayName,State,StartMode,PathName | Out-File C:\Investigation\Current_Services\Current_Services.txt

##### DNS Cache #####

New-Item C:\Investigation\DNS_Cache -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-DnsClientCache | Select-Object Name,Data | Sort-Object Name -Unique | Where-Object {$_.Name -replace ' ',$null} | Out-File C:\Investigation\DNS_Cache\DNS_Cache.txt

##### ETC Hosts #####

New-Item C:\Investigation\ETC_Hosts -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Content C:\Windows\System32\drivers\etc\hosts | Out-File C:\Investigation\ETC_Hosts\ETC_Hosts.txt

##### Event Logs #####

New-Item C:\Investigation\Event_Logs -ItemType Directory -Force -ErrorAction SilentlyContinue
(Get-ChildItem C:\Windows\System32\winevt\Logs).FullName | ForEach-Object {Copy-Item $_ -Destination C:\Investigation\Event_Logs\}

##### Files #####

New-Item C:\Investigation\Files -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File | Format-List FullName,CreationTime,LastAccessTime,LastWriteTime | Out-File "C:\Investigation\Files\File_Names.txt"
(Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File).FullName | ForEach-Object {Get-FileHash -Algorithm MD5 "$_" -ErrorAction SilentlyContinue | Format-List Hash,Path} | Out-File "C:\Investigation\Files\MD5_File_Hashes.txt"
(Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File).FullName | ForEach-Object {Get-FileHash -Algorithm SHA1 "$_" -ErrorAction SilentlyContinue | Format-List Hash,Path} | Out-File "C:\Investigation\Files\SHA1_File_Hashes.txt"

<#

This will search at the line of the string and five lines past...

Get-Content [FILE] | Select-String -Pattern "desktop.ini" -Context 0,4

#>

##### HKCU Run Key #####

New-Item C:\Investigation\Registry -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Item Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKCU-Registry.txt"

##### HKLM Run Key #####

Get-Item Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKLM-Registry.txt"

##### HKU Run Key #####

Get-Item Registry::HKEY_USERS\*\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue  | Out-File "C:\Investigation\Registry\HKU-Registry.txt"

##### Local Groups #####

New-Item C:\Investigation\Local_Groups -ItemType Directory -Force -ErrorAction SilentlyContinue

Get-LocalGroup | Select-Object Name | Sort-Object Name | Format-Table -HideTableHeaders | Out-File C:\Investigation\Local_Groups\Local_Groups.txt
$LocalGroups = @((Get-Localgroup).Name)
foreach ($LocalGroup in $LocalGroups){
    Write-Output "========== $LocalGroup ==========" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    Write-Output "" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    (Get-LocalGroupMember -Group $LocalGroup).Name | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    Write-Output "" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
}

##### Local Users #####

New-Item C:\Investigation\Local_Users -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-LocalUser | Select-Object Name,SID | Sort-Object Name | Out-File C:\Investigation\Local_Users\Local_Users.txt

##### Network Connected Processes #####

$LocalIP = (Test-Connection $env:COMPUTERNAME -Count 1).IPV4Address
New-Item C:\Investigation\Network_Connected_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-NetTCPConnection | Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess | Where-Object {$_.RemoteAddress -ne $LocalIP} |Where-Object {$_.RemoteAddress -ne '0.0.0.0'} | Where-Object {$_.RemoteAddress -ne '::'} | Where-Object {$_.RemoteAddress -ne '::1'} | Sort-Object OwningProcess | Format-Table -AutoSize | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_IDs.txt
((Get-NetTCPConnection).OwningProcess | Sort-Object -Unique) | ForEach-Object {Get-Process -Id $_ | Select-Object Id,ProcessName | Sort-Object Id} | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_Names.txt

##### Network Statistics #####

New-Item C:\Investigation\Network_Statistics -ItemType Directory -Force -ErrorAction SilentlyContinue
(Get-NetTCPConnection).RemoteAddress | Where-Object {$_.RemoteAddress -ne $LocalIP} | Where-Object {$_ -ne '0.0.0.0'} | Where-Object {$_ -ne '::'} | Where-Object {$_ -ne '::1'} | Sort-Object -Unique | Out-File "C:\Investigation\Network_Statistics\Network_Statistics.txt"

##### Prefetch Files #####

New-Item C:\Investigation\Prefetch_Files -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-ChildItem C:\Windows\Prefetch | Select-Object FullName,CreationTime,LastAccessTime,LastWriteTime | Sort-Object LastWriteTime -Descending | Out-File C:\Investigation\Prefetch_Files\Prefetch_Files.txt

##### Scheduled Tasks #####

New-Item C:\Investigation\Scheduled_Tasks -ItemType Directory -Force -ErrorAction SilentlyContinue
SCHTASKS /QUERY | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Tasks.txt
$ScheduledTaskFiles = @((Get-ChildItem C:\Windows\System32\Tasks -Recurse -Force -ErrorAction SilentlyContinue -File).FullName)
foreach ($ScheduledTaskFile in $ScheduledTaskFiles) {
    Write-Output "=============== $ScheduledTaskFile ===============" | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
    Write-Output "" | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
    Get-Content $ScheduledTaskFile -Force -ErrorAction SilentlyContinue| Select-String "<Command>" -Context 0,1 | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
}

##### SMB Shares #####

New-Item C:\Investigation\SMB_Shares -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-SmbShare | Out-File C:\Investigation\SMB_Shares\SMB_Shares.txt

##### Trusted WinRM #####

New-Item C:\Investigation\Trusted_WinRM -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Item WSMan:\localhost\Client\TrustedHosts | Select-Object Value | Format-Table -HideTableHeaders | Out-File C:\Investigation\Trusted_WinRM\Trusted_WinRM.txt
