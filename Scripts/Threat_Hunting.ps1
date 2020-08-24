<#

This script is intended to be used for threat hunting.

It is currently a work in progress.

This script does the following things on a remote computer:

V01 - Downloads workstation logs.
V01 - Downloads current processes.
V01 - Downloads current services.
V01 - Downloads current network connections.
V02 - Downloads User Information.
V02 - Downloads Time Information.
V02 - Downloads Scheduled Tasks.

#>

$StartTime = Get-Date | Select-Object DateTime
$StartTime = $StartTime -replace "@{DateTime=",""
$StartTime = $StartTime -replace "}",""
$StartTime

$host.UI.RawUI.WindowTitle = "Threat Hunting"

$ScriptLog =  "C:\Threat_Hunting\00_-_Logging\Threat_Hunting_Log.txt"

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

$WorkstationName = Read-Host "Enter a hostname to run this script against"

Write-Host ""
Write-Host "Testing to see if $WorkstationName is online..."

If (Test-Path "C:\Threat_Hunting\00_-_Logging\Threat_Hunting_Log.txt") {
Add-Content $ScriptLog ""
Add-Content $ScriptLog "--------------------"
Add-Content $ScriptLog ""
Add-Content $ScriptLog "User            : $ENV:USERNAME"
Add-Content $ScriptLog "Script Ran From : $ENV:COMPUTERNAME"
Add-Content $ScriptLog "System Queried  : $WorkstationName"
Add-Content $ScriptLog "Start Time      : $StartTime"
}

Else {
New-Item -Name "Threat_Hunting_Log.txt" -ItemType File -Path "C:\Threat_Hunting\00_-_Logging\"
Add-Content $ScriptLog "User            : $ENV:USERNAME"
Add-Content $ScriptLog "Script Ran From : $ENV:COMPUTERNAME"
Add-Content $ScriptLog "System Queried  : $WorkstationName"
Add-Content $ScriptLog "Start Time      : $StartTime"
}

$WorkstationStatus = Test-Connection $WorkstationName -Count 4 -Quiet -ErrorAction SilentlyContinue

If ($WorkstationStatus -eq "True") {
    Write-Host ""
    Write-Host "$WorkstationName is currently online."
    Start-Sleep -Seconds 1
    Write-Host ""
}

Else {
    Write-Host ""
    Write-Host "$WorkstationName is currently offline."
    Write-Host ""
    Write-Host "The script is now exiting."
    Start-Sleep -Seconds 10
    Stop-Process -Name cmd -Force
        Stop-Process -Name powershell -Force
        Clear-Host
    Break
}

New-Item -Path C:\Threat_Hunting\$WorkstationName\Logs -ItemType Directory

Set-Location -Path C:\Threat_Hunting\$WorkstationName\

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Event Logs: Processing"
Write-Host "Current Processes: Pending"
Write-Host "Current Services: Pending"
Write-Host "Network Statistics: Pending"
Write-Host "User Information: Pending"
Write-Host "Time Information: Pending"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading Event Logs..."

Function Backup-EventLogs
{
 $Eventlogs = Get-WmiObject -Class Win32_NTEventLogFile -ComputerName $WorkstationName
 Foreach($log in $EventLogs)
        {
            $path = "\\{0}\C$\Windows\System32\winevt\Logs\{1}.evtx" -f $WorkstationName,$log.LogFileName
            Copy-EventLogsToArchive -path $path
        }
}


Function Copy-EventLogsToArchive ($path)
{ Copy-Item -path $path -dest ".\Logs" -force
}

Backup-EventLogs

<#

\\$WorkstationName\c$\Windows\System32\winevt\Logs

#>

Copy-Item "\\$WorkstationName\C$\Windows\System32\winevt\Logs\Microsoft-Windows-Sysmon%4Operational.evtx" -Destination .\Logs\

Rename-Item -Path "C:\Threat_Hunting\$WorkstationName\Logs\Microsoft-Windows-Sysmon%4Operational.evtx" -NewName "SysMon.evtx"

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Event Logs: Completed"
Write-Host "Current Processes: Processing"
Write-Host "Current Services: Pending"
Write-Host "Network Statistics: Pending"
Write-Host "User Information: Pending"
Write-Host "Time Information: Pending"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading Current Processes..."

Get-Process -ComputerName $WorkstationName | Format-Table -AutoSize -Wrap | Out-File .\$WorkstationName-Processes.txt

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Event Logs: Completed"
Write-Host "Current Processes: Completed"
Write-Host "Current Services: Processing"
Write-Host "Network Statistics: Pending"
Write-Host "User Information: Pending"
Write-Host "Time Information: Pending"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading Current Services..."

Get-Service -ComputerName $WorkstationName | Format-Table -AutoSize -Wrap | Out-File .\$WorkstationName-Services.txt

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Current Processes: Completed"
Write-Host "Current Services: Completed"
Write-Host "Network Statistics: Processing"
Write-Host "User Information: Pending"
Write-Host "Time Information: Pending"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading network statistics..."

# Get-NetworkStatistics was used from another source, but I have long since lost the source...

function Get-NetworkStatistics {
    <#

    .PARAMETER State
            Indicates the state of a TCP connection. The possible states are as follows:

            Closed       - The TCP connection is closed.
            Close_Wait   - The local endpoint of the TCP connection is waiting for a connection termination request from the local user.
            Closing      - The local endpoint of the TCP connection is waiting for an acknowledgement of the connection termination request sent previously.
            Delete_Tcb   - The transmission control buffer (TCB) for the TCP connection is being deleted.
            Established  - The TCP handshake is complete. The connection has been established and data can be sent.
            Fin_Wait_1   - The local endpoint of the TCP connection is waiting for a connection termination request from the endpoint or for an acknowledgement of the connection termination request sent previously.
            Fin_Wait_2   - The local endpoint of the TCP connection is waiting for a connection termination request from the endpoint.
            Last_Ack     - The local endpoint of the TCP connection is waiting for the final acknowledgement of the connection termination request sent previously.
            Listen       - The local endpoint of the TCP connection is listening for a connection request from any endpoint.
            Syn_Received - The local endpoint of the TCP connection has sent and received a connection request and is waiting for an acknowledgment.
            Syn_Sent     - The local endpoint of the TCP connection has sent the endpoint a segment header with the synchronize (SYN) control bit set and is waiting for a matching connection request.
            Time_Wait    - The local endpoint of the TCP connection is waiting for enough time to pass to ensure that the endpoint received the acknowledgement of its connection termination request.
            Unknown      - The TCP connection state is unknown.
    #>

        [OutputType('System.Management.Automation.PSObject')]
        [CmdletBinding()]
        param(

                [Parameter(Position=0)]
                [System.String]$ProcessName='*',

                [Parameter(Position=1)]
                [System.String]$Address='*',           

                [Parameter(Position=2)]
                $Port='*',


                [Parameter(Position=3,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [System.String[]]$ComputerName=$env:COMPUTERNAME,


                [ValidateSet('*','tcp','udp')]
                [System.String]$Protocol='*',


                [ValidateSet('*','Closed','Close_Wait','Closing','Delete_Tcb','DeleteTcb','Established','Fin_Wait_1','Fin_Wait_2','Last_Ack','Listening','Syn_Received','Syn_Sent','Time_Wait','Unknown')]
                [System.String]$State='*',


        [switch]$ShowHostnames,

        [switch]$ShowProcessNames = $true,     


        [System.String]$TempFile = "C:\netstat.txt",


        [validateset('*','IPv4','IPv6')]
        [string]$AddressFamily = '*'
        )

        begin{
        #Define properties
            $properties = 'ComputerName','Protocol','LocalAddress','LocalPort','RemoteAddress','RemotePort','State','ProcessName','PID'


        #store hostnames in array for quick lookup
            $dnsCache = @{}

        }

        process{


        foreach($Computer in $ComputerName) {


            #Collect processes
            if($ShowProcessNames){
                Try {
                    $processes = Get-Process -ComputerName $Computer -ErrorAction stop | select name, id
                }
                Catch {
                    Write-warning "Could not run Get-Process -computername $Computer.  Verify permissions and connectivity.  Defaulting to no ShowProcessNames"
                    $ShowProcessNames = $false
                }
            }

            #Handle systems
                if($Computer -ne $env:COMPUTERNAME){


                    #define command
                        [string]$cmd = "cmd /c c:\windows\system32\netstat.exe -ano >> $tempFile"

                    #define file path - computername, drive, folder path
                        $remoteTempFile = "\\{0}\{1}`${2}" -f "$Computer", (split-path $tempFile -qualifier).TrimEnd(":"), (Split-Path $tempFile -noqualifier)


                    #delete previous results
                        Try{
                            $null = Invoke-WmiMethod -class Win32_process -name Create -ArgumentList "cmd /c del $tempFile" -ComputerName $Computer -ErrorAction stop
                        }
                        Catch{
                            Write-Warning "Could not invoke create win32_process on $Computer to delete $tempfile"
                        }


                    #run command
                        Try{
                            $processID = (Invoke-WmiMethod -class Win32_process -name Create -ArgumentList $cmd -ComputerName $Computer -ErrorAction stop).processid
                        }
                        Catch{
                            #If we didn't run netstat, break everything off
                            Throw $_
                            Break
                        }


                    #wait for process to complete
                        while (
                            #This while should return true until the process completes
                                $(
                                    try{
                                        get-process -id $processid -computername $Computer -ErrorAction Stop
                                    }
                                    catch{
                                        $FALSE
                                    }
                                )
                        ) {
                            start-sleep -seconds 2
                        }

                    #gather results
                        if(test-path $remoteTempFile){

                            Try {
                                $results = Get-Content $remoteTempFile | Select-String -Pattern '\s+(TCP|UDP)'
                            }
                            Catch {
                                Throw "Could not get content from $remoteTempFile for results"
                                Break
                            }


                            Remove-Item $remoteTempFile -force


                        }
                        else{
                            Throw "'$tempFile' on $Computer converted to '$remoteTempFile'.  This path is not accessible from your system."
                            Break
                        }
                }
                else{
                    #gather results on local PC
                        $results = netstat -ano | Select-String -Pattern '\s+(TCP|UDP)'
                }


            #initialize counter for progress
                $totalCount = $results.count
                $count = 0

            #Loop through each line of results   
                    foreach($result in $results) {

                    $item = $result.line.split(' ',[System.StringSplitOptions]::RemoveEmptyEntries)

                    if($item[1] -notmatch '^\[::'){

                        #parse the netstat line for local address and port
                            if (($la = $item[1] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6'){
                                $localAddress = $la.IPAddressToString
                                $localPort = $item[1].split('\]:')[-1]
                            }
                            else {
                                $localAddress = $item[1].split(':')[0]
                                $localPort = $item[1].split(':')[-1]
                            }

                        #parse the netstat line for address and port
                            if (($ra = $item[2] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6'){
                                $remoteAddress = $ra.IPAddressToString
                                $remotePort = $item[2].split('\]:')[-1]
                            }
                            else {
                                $remoteAddress = $item[2].split(':')[0]
                                $remotePort = $item[2].split(':')[-1]
                            }


                        #Filter IPv4/IPv6 if specified
                            if($AddressFamily -ne "*")
                            {
                                if($AddressFamily -eq 'IPv4' -and $localAddress -match ':' -and $remoteAddress -match ':|\*' )
                                {
                                    #Both are IPv6, or ipv6 and listening, skip
                                    Write-Verbose "Filtered by AddressFamily:`n$result"
                                    continue
                                }
                                elseif($AddressFamily -eq 'IPv6' -and $localAddress -notmatch ':' -and ( $remoteAddress -notmatch ':' -or $remoteAddress -match '*' ) )
                                {
                                    #Both are IPv4, or ipv4 and listening, skip
                                    Write-Verbose "Filtered by AddressFamily:`n$result"
                                    continue
                                }
                            }

                        #parse the netstat line for other properties
                                $procId = $item[-1]
                                $proto = $item[0]
                                $status = if($item[0] -eq 'tcp') {$item[3]} else {$null}       


                        #Filter the object
                                        if($remotePort -notlike $Port -and $localPort -notlike $Port){
                                write-verbose "$Remoteport local $localport port $port"
                                Write-Verbose "Filtered by Port:`n$result"
                                continue
                                        }


                                        if($remoteAddress -notlike $Address -and $localAddress -notlike $Address){
                                Write-Verbose "Filtered by Address:`n$result"
                                continue
                                        }

                                    if($status -notlike $State){
                                Write-Verbose "Filtered by State:`n$result"
                                continue
                                        }


                                    if($proto -notlike $Protocol){
                                Write-Verbose "Filtered by Protocol:`n$result"
                                continue
                                        }

                        #Display progress bar prior to getting process name or host name
                            Write-Progress  -Activity "Resolving host and process names"`
                                -Status "Resolving process ID $procId with address $remoteAddress and local address $localAddress"`
                                -PercentComplete (( $count / $totalCount ) * 100)

                        #If we are running showprocessnames, get the matching name
                            if($ShowProcessNames -or $PSBoundParameters.ContainsKey -eq 'ProcessName'){

                                #handle case where process spun up in the time between running get-process and running netstat
                                if($procName = $processes | Where {$_.id -eq $procId} | select -ExpandProperty name ){ }
                                else {$procName = "Unknown"}


                            }
                            else{$procName = "NA"}


                                        if($procName -notlike $ProcessName){
                                Write-Verbose "Filtered by ProcessName:`n$result"
                                continue
                                        }

                        #if the showhostnames switch is specified, try to map IP to hostname
                            if($showHostnames){
                                $tmpAddress = $null
                                try{
                                    if($remoteAddress -eq "127.0.0.1" -or $remoteAddress -eq "0.0.0.0"){
                                        $remoteAddress = $Computer
                                    }
                                    elseif($remoteAddress -match "\w"){

                                        #check with dns cache first
                                            if ($dnsCache.containskey( $remoteAddress)) {
                                                $remoteAddress = $dnsCache[$remoteAddress]
                                                write-verbose "using cached '$remoteAddress'"
                                            }
                                            else{
                                                #if address isn't in the cache, resolve it and add it
                                                    $tmpAddress = $remoteAddress
                                                    $remoteAddress = [System.Net.DNS]::GetHostByAddress("$remoteAddress").hostname
                                                    $dnsCache.add($tmpAddress, $remoteAddress)
                                                    write-verbose "using non cached '$remoteAddress`t$tmpAddress"
                                            }
                                    }
                                }
                                catch{ }


                                try{


                                    if($localAddress -eq "127.0.0.1" -or $localAddress -eq "0.0.0.0"){
                                        $localAddress = $Computer
                                    }
                                    elseif($localAddress -match "\w"){
                                        #check with dns cache first
                                            if($dnsCache.containskey($localAddress)){
                                                $localAddress = $dnsCache[$localAddress]
                                                write-verbose "using cached LOCAL '$localAddress'"
                                            }
                                            else{
                                                #if address isn't in the cache, resolve it and add it
                                                    $tmpAddress = $localAddress
                                                    $localAddress = [System.Net.DNS]::GetHostByAddress("$localAddress").hostname
                                                    $dnsCache.add($localAddress, $tmpAddress)
                                                    write-verbose "using non cached LOCAL '$localAddress'`t'$tmpAddress'"
                                            }
                                    }
                                }
                                catch{ }
                            }

                            #Write the object   
                                New-Object -TypeName PSObject -Property @{
                                            ComputerName = $Computer
                                PID = $procId
                                            ProcessName = $procName
                                            Protocol = $proto
                                            LocalAddress = $localAddress
                                            LocalPort = $localPort
                                            RemoteAddress =$remoteAddress
                                            RemotePort = $remotePort
                                            State = $status
                                    } | Select-Object -Property $properties                                                             


                        #Increment the progress counter
                            $count++
                    }
                }
        }
    }
}

Get-NetworkStatistics -ComputerName $WorkstationName | Format-Table -AutoSize | Out-File .\$WorkstationName-Network_Statistics.txt

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Current Processes: Completed"
Write-Host "Current Services: Completed"
Write-Host "Network Statistics: Completed"
Write-Host "User Information: Processing"
Write-Host "Time Information: Pending"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading User Information..."

$CurrentUser = Get-WmiObject -ComputerName $WorkstationName -Class Win32_ComputerSystem | Select-Object UserName
$CurrentUser = "$CurrentUser".TrimStart("@{UserName=MAIN\")
$CurrentUser = "$CurrentUser".TrimEnd("}")
Get-ADUser $CurrentUser | Out-File ".\$WorkstationName-Current_User.txt"

Get-ChildItem "\\$WorkstationName\C$\Users" | Select-Object Name,LastWriteTime | Sort-Object LastWriteTime -Descending | Format-List | Out-File ".\$WorkstationName-Historical_Users.txt"

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Current Processes: Completed"
Write-Host "Current Services: Completed"
Write-Host "Network Statistics: Completed"
Write-Host "User Information: Completed"
Write-Host "Time Information: Processing"
Write-Host "Scheduled Tasks: Pending"
Write-Host ""
Write-Host "Downloading Time Information..."

$RemoteSystemTime = Get-WmiObject -Class Win32_LocalTime -ComputerName $WorkstationName
Get-Date -Year $RemoteSystemTime.Year -Month  $RemoteSystemTime.Month -Day  $RemoteSystemTime.Day -Hour $RemoteSystemTime.Hour -Minute $RemoteSystemTime.Minute -Second $RemoteSystemTime.Second | Out-File ".\$WorkstationName-System_Time.txt"

Get-WmiObject -Class Win32_SystemTimeZone -ComputerName $WorkstationName | Select-Object Setting | Out-File ".\$WorkstationName-System_Time_Zone.txt"

Clear-Host

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "Current Processes: Completed"
Write-Host "Current Services: Completed"
Write-Host "Network Statistics: Completed"
Write-Host "User Information: Completed"
Write-Host "Time Information: Completed"
Write-Host "Scheduled Tasks: Processing"
Write-Host ""
Write-Host "Downloading Scheduled Tasks..."

SCHTASKS /QUERY /S $WorkstationName >> ".\$WorkstationName-Scheduled_Tasks.txt"

tasklist /svc /s $WorkstationName /FO CSV >> ".\$WorkstationName-TaskList_Services.csv"
tasklist /v /s $WorkstationName /FO CSV >> ".\$WorkstationName-TaskList_Verbose.csv"
<#

***** This is really powerful, but can take over a half hour topull the data back. I wasn't able to run it fully during tests on 12NOV2019. *****

tasklist /m /s $WorkstationName /FO CSV >> ".\$WorkstationName-TaskList_Modules.csv"

#>

Write-Host "
  _______ _    _ _____  ______       _______   _    _ _    _ _   _ _______ _____ _   _  _____
 |__   __| |  | |  __ \|  ____|   /\|__   __| | |  | | |  | | \ | |__   __|_   _| \ | |/ ____|
    | |  | |__| | |__) | |__     /  \  | |    | |__| | |  | |  \| |  | |    | | |  \| | |  __
    | |  |  __  |  _  /|  __|   / /\ \ | |    |  __  | |  | | . `  |  | |    | | | . `  | | |_ |
    | |  | |  | | | \ \| |____ / ____ \| |    | |  | | |__| | |\  |  | |   _| |_| |\  | |__| |
    |_|  |_|  |_|_|  \_\______/_/    \_\_|    |_|  |_|\____/|_| \_|  |_|  |_____|_| \_|\_____|

"

Write-Host "Workstation Name: $WorkstationName."
Write-Host ""
Write-Host "The script is now finished."
Write-Host ""
Write-Host ""

Start-Sleep -Seconds 10

Invoke-Item "C:\Threat_Hunting\$WorkstationName\"

$EndTime = Get-Date | Select-Object DateTime
$EndTime = $EndTime -replace "@{DateTime=",""
$EndTime = $EndTime -replace "}",""
$EndTime

Add-Content $ScriptLog "End Time        : $EndTime"
Add-Content $ScriptLog ""

Stop-Process -Name cmd -Force
Stop-Process -Name powershell -Force

Clear-Host
