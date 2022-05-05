$ExecutionPolicy = Get-ExecutionPolicy
$FormatEnumerationLimit = -1

##### Enable PSRemoting #####

Enable-PSRemoting -SkipNetworkProfileCheck -Force

##### Setting Bypass for Remote Execution Policy #####

Set-ExecutionPolicy -ExecutionPolicy Bypass -Force

##### Remove the Investigation Folder #####

Remove-Item C:\Investigation -Force -Recurse -ErrorAction SilentlyContinue

##### Create the Investigation Folder #####

New-Item C:\Investigation -ItemType Directory -Force -ErrorAction SilentlyContinue

##### Alternate Data Streams ##### ****************************

New-Item C:\Investigation\Alternate_Data_Streams -ItemType Directory -Force -ErrorAction SilentlyContinue

<#

Works with this...

((Get-ChildItem C:\Investigation -Recurse -ErrorAction SilentlyContinue | ForEach-Object {Get-Item $_ -Stream * -ErrorAction SilentlyContinue}) | Where-Object {$_.Stream -ne ':$DATA'}) | Format-Table PSPath -AutoSize -HideTableHeaders | Out-File C:\Investigation\Alternate_Data_Streams\ADS.txt


but not this...

((Get-ChildItem C:\Users -Recurse -ErrorAction SilentlyContinue | ForEach-Object {Get-Item $_ -Stream * -ErrorAction SilentlyContinue}) | Where-Object {$_.Stream -ne ':$DATA'}) | Format-Table PSPath -AutoSize -HideTableHeaders | Out-File C:\Investigation\Alternate_Data_Streams\ADS.txt

#>

((Get-ChildItem C:\Investigation -Recurse -ErrorAction SilentlyContinue | ForEach-Object {Get-Item $_ -Stream * -ErrorAction SilentlyContinue}) | Where-Object {$_.Stream -ne ':$DATA'}) | Format-Table PSPath -AutoSize -HideTableHeaders | Out-File C:\Investigation\Alternate_Data_Streams\ADS.txt

<#

$MainFile = ".\Test.txt:Test"
$ADSFile = "Test"
Set-Content $ADSFile -Encoding Byte -Value $MainFile
Format-Hex $ADSFile | Select-Object -First 10

#>

##### Current Processes #####

New-Item C:\Investigation\Current_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Process | Select-Object Name,Path | Out-File C:\Investigation\Current_Processes\Current_Processes.txt

##### Current Services #####

New-Item C:\Investigation\Current_Services -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Service | Select-Object Name,Status,StartType | Sort-Object Name | Out-File C:\Investigation\Current_Services\Current_Services.txt

##### DNS Cache #####

New-Item C:\Investigation\DNS_Cache -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-DnsClientCache | Select-Object Name,Data | Sort-Object Name | Where-Object {$_.Name -replace ' ',$null} | Out-File C:\Investigation\DNS_Cache\DNS_Cache.txt

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

##### HKCU Registry #####

New-Item C:\Investigation\Registry -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Item Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKCU-Registry.txt"

##### HKLM Registry #####

Get-Item Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKLM-Registry.txt"

##### HKU Registry #####

Get-Item Registry::HKEY_USERS\*\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue  | Out-File "C:\Investigation\Registry\HKU-Registry.txt"

##### Local Users #####

New-Item C:\Investigation\Local_Users -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-LocalUser | Select-Object Name,SID | Sort-Object Name | Out-File C:\Investigation\Local_Users\Local_Users.txt

##### Network Statistics #####

New-Item C:\Investigation\Network_Statistics -ItemType Directory -Force -ErrorAction SilentlyContinue
(Get-NetTCPConnection).RemoteAddress | Out-File "C:\Investigation\Network_Statistics\Network_Statistics.txt"

##### Network Connected Processes #####

New-Item C:\Investigation\Network_Connected_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-NetTCPConnection | Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess | Sort-Object OwningProcess | Format-Table -AutoSize | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_IDs.txt
((Get-NetTCPConnection).OwningProcess | Sort-Object -Unique) | ForEach-Object {Get-Process -Id $_ | Select-Object Id,ProcessName | Sort-Object Id} | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_Names.txt

##### Scheduled Tasks #####

New-Item C:\Investigation\Scheduled_Tasks -ItemType Directory -Force -ErrorAction SilentlyContinue
SCHTASKS /QUERY | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Tasks.txt

##### ETC Hosts #####

New-Item C:\Investigation\ETC_Hosts -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Content C:\Windows\System32\drivers\etc\hosts | Out-File C:\Investigation\ETC_Hosts\ETC_Hosts.txt

##### Trusted WinRM #####

New-Item C:\Investigation\Trusted_WinRM -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Item WSMan:\localhost\Client\TrustedHosts | Select-Object Value | Out-File C:\Investigation\Trusted_WinRM\Trusted_WinRM.txt

##### Cleaning Up #####

Enable-PSRemoting -SkipNetworkProfileCheck -Force; Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Force
