$FormatEnumerationLimit = -1

<#

The function Get-PasswordFile was obtained from Chris Campbell (https://github.com/obscuresec/PowerShell/blob/master/Get-PasswordFile).

#>

function Get-PasswordFile { 
<# 
.SYNOPSIS 
  
    Copies either the SAM or NTDS.dit and system files to a specified directory. 
  
.PARAMETER DestinationPath 
  
    Specifies the directory to the location where the password files are to be copied. 
  
.OUTPUTS 
  
    None or an object representing the copied items. 
  
.EXAMPLE 
  
    Get-PasswordFile "c:\temp" 
  
#>
  
    [CmdletBinding()] 
    Param
    ( 
        [Parameter(Mandatory = $true, Position = 0)] 
        [ValidateScript({Test-Path $_ -PathType 'Container'})]  
        [ValidateNotNullOrEmpty()] 
        [String] 
        $DestinationPath     
    ) 
  
        #Define Copy-RawItem helper function from http://gallery.technet.microsoft.com/scriptcenter/Copy-RawItem-Private-NET-78917643 
        function Copy-RawItem
        { 
  
        [CmdletBinding()] 
        [OutputType([System.IO.FileSystemInfo])] 
        Param ( 
            [Parameter(Mandatory = $True, Position = 0)] 
            [ValidateNotNullOrEmpty()] 
            [String]
            $Path, 
  
            [Parameter(Mandatory = $True, Position = 1)] 
            [ValidateNotNullOrEmpty()] 
            [String]
            $Destination, 
  
            [Switch]
            $FailIfExists
        ) 
  
        # Get a reference to the internal method - Microsoft.Win32.Win32Native.CopyFile() 
        $mscorlib = [AppDomain]::CurrentDomain.GetAssemblies() | ? {$_.Location -and ($_.Location.Split('\')[-1] -eq 'mscorlib.dll')} 
        $Win32Native = $mscorlib.GetType('Microsoft.Win32.Win32Native') 
        $CopyFileMethod = $Win32Native.GetMethod('CopyFile', ([Reflection.BindingFlags] 'NonPublic, Static'))  
  
        # Perform the copy 
        $CopyResult = $CopyFileMethod.Invoke($null, @($Path, $Destination, ([Bool] $PSBoundParameters['FailIfExists']))) 
  
        $HResult = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error() 
  
        if ($CopyResult -eq $False -and $HResult -ne 0) 
        { 
            # An error occured. Display the Win32 error set by CopyFile 
            throw ( New-Object ComponentModel.Win32Exception ) 
        } 
        else
        { 
            Write-Output (Get-ChildItem $Destination) 
        } 
    } 
   
    #Check for admin rights
    if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
    {
        Write-Error "Not running as admin. Run the script with elevated credentials"
        Return
    }
         
    #Get "vss" service startup type 
    $VssStartMode = (Get-WmiObject -Query "Select StartMode From Win32_Service Where Name='vss'").StartMode 
    if ($VssStartMode -eq "Disabled") {Set-Service vss -StartUpType Manual} 
  
    #Get "vss" Service status and start it if not running 
    $VssStatus = (Get-Service vss).status  
    if ($VssStatus -ne "Running") {Start-Service vss} 
  
        #Check to see if we are on a DC 
        $DomainRole = (Get-WmiObject Win32_ComputerSystem).DomainRole 
        $IsDC = $False
        if ($DomainRole -gt 3) { 
            $IsDC = $True
            $NTDSLocation = (Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\services\NTDS\Parameters)."DSA Database File"
            $FileDrive = ($NTDSLocation).Substring(0,3) 
        } else {$FileDrive = $Env:HOMEDRIVE + '\'} 
      
        #Create a volume shadow filedrive 
        $WmiClass = [WMICLASS]"root\cimv2:Win32_ShadowCopy"
        $ShadowCopy = $WmiClass.create($FileDrive, "ClientAccessible") 
        $ReturnValue = $ShadowCopy.ReturnValue 
  
        if ($ReturnValue -ne 0) { 
            Write-Error "Shadow copy failed with a value of $ReturnValue"
            Return
        }  
      
        #Get the DeviceObject Address 
        $ShadowID = $ShadowCopy.ShadowID 
        $ShadowVolume = (Get-WmiObject Win32_ShadowCopy | Where-Object {$_.ID -eq $ShadowID}).DeviceObject 
      
            #If not a DC, copy System and SAM to specified directory 
            if ($IsDC -ne $true) { 
  
                $SamPath = Join-Path $ShadowVolume "\Windows\System32\Config\sam" 
                $SystemPath = Join-Path $ShadowVolume "\Windows\System32\Config\system"
  
                #Utilizes Copy-RawItem from Matt Graeber 
                Copy-RawItem $SamPath "$DestinationPath\sam"
                Copy-RawItem $SystemPath "$DestinationPath\system"
            } else { 
              
                #Else copy the NTDS.dit and system files to the specified directory             
                $NTDSPath = Join-Path $ShadowVolume "\Windows\NTDS\NTDS.dit" 
                $SystemPath = Join-Path $ShadowVolume "\Windows\System32\Config\system"
  
                Copy-RawItem $NTDSPath "$DestinationPath\ntds"
                Copy-RawItem $SystemPath "$DestinationPath\system"
            }     
      
        #Return "vss" service to previous state 
        If ($VssStatus -eq "Stopped") {Stop-Service vss} 
        If ($VssStartMode -eq "Disabled") {Set-Service vss -StartupType Disabled} 
}

##### Remove the Investigation Folder #####

Remove-Item C:\Investigation -Force -Recurse -ErrorAction SilentlyContinue

##### Create the Investigation Folder #####

New-Item C:\Investigation -ItemType Directory -Force -ErrorAction SilentlyContinue

<#

######################################################
#                                                    #
# BE SURE TO UNCOMMENT THE SECTIONS YOU WANT TO USE! #
#                                                    #
# BELOW THIS BOX, REMOVE "<" TO UNCOMMENT A SECTION! #
#                                                    #
######################################################

#>

<##### Alternate Data Streams #####

New-Item C:\Investigation\Alternate_Data_Streams -ItemType Directory -Force -ErrorAction SilentlyContinue
(((Get-ChildItem C:\Users -Recurse -ErrorAction SilentlyContinue).FullName | ForEach-Object {Get-Item $_ -Stream * -ErrorAction SilentlyContinue}) | Where-Object {$_.Stream -ne ':$DATA'} | Where-Object {$_.Stream -ne 'Zone.Identifier'}) | Format-Table PSPath -AutoSize -HideTableHeaders | Out-File C:\Investigation\Alternate_Data_Streams\ADS.txt

#>

<##### Address Resolution Protocol Cache #####

New-Item C:\Investigation\ARP_Cache -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-NetNeighbor | Select-Object IPAddress,LinkLayerAddress,State -Unique | Out-File C:\Investigation\ARP_Cache\ARP_Cache.txt

#>

<##### Audit Policy #####

New-Item C:\Investigation\Audit_Policy -ItemType Directory -Force -ErrorAction SilentlyContinue
Write-Output (Auditpol /get /Category:* /r | ConvertFrom-Csv | Select-Object Subcategory,*lusion* | Sort-Object Subcategory) | Out-File C:\Investigation\Audit_Policy\Audit_Policy.txt

#>

<##### Current Processes #####

New-Item C:\Investigation\Current_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Process | Select-Object Name,Path -Unique | Out-File C:\Investigation\Current_Processes\Current_Processes.txt

#>

<##### Current Services #####

New-Item C:\Investigation\Current_Services -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-WmiObject -Class Win32_Service | Select-Object DisplayName,State,StartMode,PathName | Format-List | Out-File C:\Investigation\Current_Services\Current_Services.txt

#>

<##### Domain Name Service Cache #####

New-Item C:\Investigation\DNS_Cache -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-DnsClientCache | Select-Object Name,Data | Sort-Object Name -Unique | Where-Object {$_.Name -replace ' ',$null} | Out-File C:\Investigation\DNS_Cache\DNS_Cache.txt

#>

<##### ETC Hosts #####

New-Item C:\Investigation\ETC_Hosts -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Content C:\Windows\System32\drivers\etc\hosts | Out-File C:\Investigation\ETC_Hosts\ETC_Hosts.txt

#>

<##### Event Logs #####

New-Item C:\Investigation\Event_Logs -ItemType Directory -Force -ErrorAction SilentlyContinue
(Get-ChildItem C:\Windows\System32\winevt\Logs).FullName | ForEach-Object {Copy-Item $_ -Destination C:\Investigation\Event_Logs\}

#>

<##### Files #####

New-Item C:\Investigation\Files -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File | Format-List FullName,CreationTime,LastAccessTime,LastWriteTime | Out-File "C:\Investigation\Files\File_Names.txt"
(Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File).FullName | ForEach-Object {Get-FileHash -Algorithm MD5 "$_" -ErrorAction SilentlyContinue | Format-List Hash,Path} | Out-File "C:\Investigation\Files\MD5_File_Hashes.txt"
(Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue -File).FullName | ForEach-Object {Get-FileHash -Algorithm SHA1 "$_" -ErrorAction SilentlyContinue | Format-List Hash,Path} | Out-File "C:\Investigation\Files\SHA1_File_Hashes.txt"

#>

<##### Files: Access Control Lists (THIS TAKES A LONG TIME; 25+ MINUTES IN TESTING) #####

$ACLs = @((Get-ChildItem C:\Users -Recurse -Force -ErrorAction SilentlyContinue).FullName)

foreach ($ACL in $ACLs) {
    Write-Output "================================================================================" | Out-File C:\Investigation\Files\ACLs.txt -Append
    Write-Output $ACL | Out-File C:\Investigation\Files\ACLs.txt -Append
    Write-Output "================================================================================" | Out-File C:\Investigation\Files\ACLs.txt -Append
    Write-Output "" | Out-File C:\Investigation\Files\ACLs.txt -Append
    Get-Acl $ACL -AllCentralAccessPolicies -ErrorAction SilentlyContinue | Format-List | Out-File C:\Investigation\Files\ACLs.txt -Append
    Write-Output "" | Out-File C:\Investigation\Files\ACLs.txt -Append
}

#>

<##### HK(CU/LM/U) Run Key #####

New-Item C:\Investigation\Registry -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-Item Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKCU-Registry.txt"
Get-Item Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue | Out-File "C:\Investigation\Registry\HKLM-Registry.txt"
Get-Item Registry::HKEY_USERS\*\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -ErrorAction SilentlyContinue  | Out-File "C:\Investigation\Registry\HKU-Registry.txt"

#>

<##### Local Groups #####

New-Item C:\Investigation\Local_Groups -ItemType Directory -Force -ErrorAction SilentlyContinue

Get-LocalGroup | Select-Object Name | Sort-Object Name | Format-Table -HideTableHeaders | Out-File C:\Investigation\Local_Groups\Local_Groups.txt
$LocalGroups = @((Get-Localgroup).Name)
foreach ($LocalGroup in $LocalGroups){
    Write-Output "========== $LocalGroup ==========" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    Write-Output "" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    (Get-LocalGroupMember -Group $LocalGroup).Name | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
    Write-Output "" | Out-File C:\Investigation\Local_Groups\Local_Group_Members.txt -Append
}

#>

<##### Local Users #####

New-Item C:\Investigation\Local_Users -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-LocalUser | Select-Object Name,SID | Sort-Object Name | Out-File C:\Investigation\Local_Users\Local_Users.txt
net accounts | Out-File C:\Investigation\Local_Users\Password_Policies.txt

#>

<##### Network Connected Processes #####

$LocalIP = (Test-Connection $env:COMPUTERNAME -Count 1).IPV4Address
New-Item C:\Investigation\Network_Connected_Processes -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-NetTCPConnection | Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess | Where-Object {$_.RemoteAddress -ne $LocalIP} |Where-Object {$_.RemoteAddress -ne '0.0.0.0'} | Where-Object {$_.RemoteAddress -ne '::'} | Where-Object {$_.RemoteAddress -ne '::1'} | Sort-Object OwningProcess | Format-Table -AutoSize | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_IDs.txt
((Get-NetTCPConnection).OwningProcess | Sort-Object -Unique) | ForEach-Object {Get-Process -Id $_ | Select-Object Id,ProcessName | Sort-Object Id} | Out-File C:\Investigation\Network_Connected_Processes\Network_Connected_Process_Names.txt

#>

<##### Network Statistics #####

New-Item C:\Investigation\Network_Statistics -ItemType Directory -Force -ErrorAction SilentlyContinue
(Get-NetTCPConnection).RemoteAddress | Where-Object {$_.RemoteAddress -ne $LocalIP} | Where-Object {$_ -ne '0.0.0.0'} | Where-Object {$_ -ne '::'} | Where-Object {$_ -ne '::1'} | Sort-Object -Unique | Out-File "C:\Investigation\Network_Statistics\Network_Statistics.txt"

#>

<##### Prefetch Files #####

New-Item C:\Investigation\Prefetch_Files -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-ChildItem C:\Windows\Prefetch | Select-Object FullName,CreationTime,LastAccessTime,LastWriteTime | Sort-Object LastWriteTime -Descending | Out-File C:\Investigation\Prefetch_Files\Prefetch_Files.txt

#>

<##### Scheduled Tasks #####

New-Item C:\Investigation\Scheduled_Tasks -ItemType Directory -Force -ErrorAction SilentlyContinue
SCHTASKS /QUERY | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Tasks.txt
$ScheduledTaskFiles = @((Get-ChildItem C:\Windows\System32\Tasks -Recurse -Force -ErrorAction SilentlyContinue -File).FullName)
foreach ($ScheduledTaskFile in $ScheduledTaskFiles) {
    Write-Output "=============== $ScheduledTaskFile ===============" | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
    Write-Output "" | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
    Get-Content $ScheduledTaskFile -Force -ErrorAction SilentlyContinue| Select-String "<Command>" -Context 0,1 | Out-File C:\Investigation\Scheduled_Tasks\Scheduled_Task_Files.txt -Append
}

#>

<##### Server Message Block Shares #####

New-Item C:\Investigation\SMB_Shares -ItemType Directory -Force -ErrorAction SilentlyContinue
Get-SmbShare | Out-File C:\Investigation\SMB_Shares\SMB_Shares.txt

#>

<##### Trusted Windows Remote Management Clients #####

New-Item C:\Investigation\Trusted_WinRM -ItemType Directory -Force -ErrorAction SilentlyContinue
$WinRMStatus = (Get-Service WinRM).Status
if ($WinRMStatus -eq "Stopped") {
    Start-Service WinRM
    Get-Item WSMan:\localhost\Client\TrustedHosts | Select-Object Value | Format-Table -HideTableHeaders | Out-File C:\Investigation\Trusted_WinRM\Trusted_WinRM.txt
    Stop-Service WinRM
}
else {
    Get-Item WSMan:\localhost\Client\TrustedHosts | Select-Object Value | Format-Table -HideTableHeaders | Out-File C:\Investigation\Trusted_WinRM\Trusted_WinRM.txt
}

#>

<##### Volume Copy Shadow Service #####

Get-PasswordFile C:\Investigation\Registry

#>
