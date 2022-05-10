Clear-Host

<#

These functions were written by Boe Prox, (https://github.com/proxb):

Ping-Subnet
Test-ConnectionAsync

#>

<#

Setting up things...

#>

Write-Host ""
Write-Host "If you want to use the IOC comparing stuff, uncomment that section and update the baseline variables." -BackgroundColor Black -ForegroundColor DarkYellow
Write-Host ""
Write-Host "[CTRL] + [C] to cancel and update the script." -BackgroundColor Black -ForegroundColor DarkYellow
Write-Host ""

pause

<#

$BaselineFolder = "[PATH]"
$FileBaseline = @(Get-Content "$BaselineFolder\files.txt")
$IPBaseline = @(Get-Content "$BaselineFolder\ips.txt")
$HKCUBaseline = @(Get-Content "$BaselineFolder\reg-hkcu.txt")
$HKLMBaseline = @(Get-Content "$BaselineFolder\reg-hklm.txt")
$HKUBaseline = @(Get-Content "$BaselineFolder\reg-hcu.txt")

#>

Clear-Item WSMan:\localhost\Client\TrustedHosts -Force -ErrorAction SilentlyContinue
Get-PSSession | Remove-PSSession -ErrorAction SilentlyContinue
Clear-Variable ConnectedHosts -ErrorAction SilentlyContinue
Clear-Variable OtherConnectedHosts -ErrorAction SilentlyContinue
Clear-Variable Sessions -ErrorAction SilentlyContinue
Remove-Item C:\Investigation -Recurse -Force -ErrorAction SilentlyContinue
New-Item C:\Investigation -ItemType Directory -Force -ErrorAction SilentlyContinue

<#

Finding all of the hosts...

#>

$OtherConnectedHosts =@()
Set-ExecutionPolicy -ExecutionPolicy Bypass -Force -ErrorAction SilentlyContinue

Function Ping-Subnet{  
    [cmdletbinding()]
    Param(
          # Subnet to ping (optional)
          [Parameter(ValueFromPipelineByPropertyName=$true, Position=0)]
          [ValidateScript({$_ -match [IPAddress]$_ })]  
          [String]$Subnet,

          # Show Successful or Failed
          [ValidateSet('Success', 'TimedOut')]
          [String]$Result = 'Success'
          )

    Begin{ 
        If (-Not($subnet)){
            Write-Verbose "Checking OS Version"
        If(([System.Version] (Get-CimInstance -ClassName Win32_OperatingSystem).Version) -ge [System.Version] 6.2){
                Write-Verbose "Checking local subnet"
                $myIP = Get-NetIPConfiguration | Select IPv4Address
                $octect = $myIP.IPv4Address.IPv4Address -split "\." # backslash is escape char
                }
            Else{
                Write-Warning "On your version of Windows you need to supply a value for the -Subnet parameter `n
                Example: `n
                PS C:\> Ping-Subnet -subnet 172.26.75.0"
                break
                }
            }
        Else{ 
            Write-Verbose "Parameter subnet set to $subnet"
            $octect = $subnet -split "\."
            Write-Verbose "$subnet split into $octect"
            }     
         
    }

    Process{
                        
        $range = for ($i = 1; $i -lt 255; $i += 1){
                [PSCustomObject]@{
                    testIP = "$($octect.Item(0)).$($octect.Item(1)).$($octect.Item(2)).$($i)"
                    }
        }         

        Write-Verbose "Range to be scanned is $($range.testip)"
        Test-ConnectionAsync -Computer $range.testip -TimeToLive 2000 | select computername, result | where result -eq $result
       
    }
} 
Function Test-ConnectionAsync {
    [OutputType('Net.AsyncPingResult')]
    [cmdletbinding()]
    Param (
        [parameter(ValueFromPipeline=$True)]
        [string[]]$Computername,
        [parameter()]
        [int32]$Timeout = 100,
        [parameter()]
        [Alias('Ttl')]
        [int32]$TimeToLive = 128,
        [parameter()]
        [switch]$Fragment,
        [parameter()]
        [byte[]]$Buffer
    )
    Begin {
        
        If (-NOT $PSBoundParameters.ContainsKey('Buffer')) {
            $Buffer = 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 
            0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69
        }
        $PingOptions = New-Object System.Net.NetworkInformation.PingOptions
        $PingOptions.Ttl = $TimeToLive
        If (-NOT $PSBoundParameters.ContainsKey('Fragment')) {
            $Fragment = $False
        }
        $PingOptions.DontFragment = $Fragment
        $Computerlist = New-Object System.Collections.ArrayList
        If ($PSBoundParameters.ContainsKey('Computername')) {
            [void]$Computerlist.AddRange($Computername)
        } Else {
            $IsPipeline = $True
        }
    }
    Process {
        If ($IsPipeline) {
            [void]$Computerlist.Add($Computername)
        }
    }
    End {
        $Task = ForEach ($Computer in $Computername) {
            [pscustomobject] @{
                Computername = $Computer
                Task = (New-Object System.Net.NetworkInformation.Ping).SendPingAsync($Computer,$Timeout, $Buffer, $PingOptions)
            }
        }        
        Try {
            [void][Threading.Tasks.Task]::WaitAll($Task.Task)
        } Catch {}
        $Task | ForEach {
            If ($_.Task.IsFaulted) {
                $Result = $_.Task.Exception.InnerException.InnerException.Message
                $IPAddress = $Null
            } Else {
                $Result = $_.Task.Result.Status
                $IPAddress = $_.task.Result.Address.ToString()
            }
            $Object = [pscustomobject]@{
                Computername = $_.Computername
                IPAddress = $IPAddress
                Result = $Result
            }
            $Object.pstypenames.insert(0,'Net.AsyncPingResult')
            $Object
        }
    }
}

Write-Host ""
Write-Host "Local IP Address:" (Test-Connection $env:COMPUTERNAME -Count 1).IPV4Address
Write-Host ""
Write-Host "Local Subnet:"
Write-Host ""

(Ping-Subnet).ComputerName

$ConnectedHosts =@((Ping-Subnet).ComputerName)

foreach ($ConnectedHost in $ConnectedHosts) {
    if ($ConnectedHost -eq (Test-Connection $env:COMPUTERNAME -Count 1).IPV4Address) {}
    else {
        $OtherConnectedHosts = $OtherConnectedHosts + $ConnectedHost 
    }
}

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    Set-Item WSMan:\localhost\Client\TrustedHosts -Value $OtherConnectedHost -Concatenate -Force
}

Get-Item WSMan:\localhost\Client\TrustedHosts | Select-Object Name,Value

##### Setup to Run Scripts Remotely #####

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    $SessionCreation = New-PSSession -ComputerName $OtherConnectedHost #-Credential Administrator #N@n0S3rveP@ssw0rd
    Invoke-Command -ScriptBlock {Enable-PSRemoting -SkipNetworkProfileCheck -Force; Set-ExecutionPolicy -ExecutionPolicy Bypass -Force} -Session $SessionCreation
}

##### Copy Script to Remote System #####

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    $SessionCreation = New-PSSession -ComputerName $OtherConnectedHost #-Credential Administrator #N@n0S3rveP@ssw0rd
    Copy-Item -ToSession $SessionCreation -Path C:\Windows_Enumeration.ps1 -Destination C:\
}

##### Run Windows_Enumeration.ps1 Remotely #####

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    $SessionCreation = New-PSSession -ComputerName $OtherConnectedHost #-Credential Administrator #N@n0S3rveP@ssw0rd
    Write-Host "========== $OtherConnectedHost =========="
    Write-Host ""
    Invoke-Command -Session $SessionCreation -ScriptBlock {C:\Windows_Enumeration.ps1}
}

Write-Host ""

pause

Write-Host ""

##### Copy Files from Remote System #####

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    $SessionCreation = New-PSSession -ComputerName $OtherConnectedHost #-Credential Administrator #N@n0S3rveP@ssw0rd
    New-Item C:\Investigation\$OtherConnectedHost -ItemType Directory -Force
    Copy-Item -FromSession $SessionCreation -Path C:\Investigation -Recurse -Destination C:\Investigation\$OtherConnectedHost
}

foreach ($OtherConnectedHost in $OtherConnectedHosts) {
    $LocalIP = (Test-Connection $env:COMPUTERNAME -Count 1).IPV4Address
    Write-Output $LocalIP.IPAddressToString | Out-File C:\Investigation\$OtherConnectedHost\Network_Connected_Processes\Analyst_IP.txt
    Write-Output $LocalIP.IPAddressToString | Out-File C:\Investigation\$OtherConnectedHost\Network_Statistics\Analyst_IP.txt
}

<#

Enable this section to compare items against IOCs...

#>

<#

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

Start-Sleep -Seconds 1

Clear-Host

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

Start-Process C:\Investigation\
