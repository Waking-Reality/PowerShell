Clear-Host
	
$TranscriptLocation = "$env:HOMEDRIVE$env:HOMEPATH\Desktop\Transcript.txt"
$FileLocation = "$env:HOMEDRIVE$env:HOMEPATH\Desktop\OpenPorts.txt"

Write-Host ""
Write-Host "================================"
Write-Host "Starting Transcript...          "
Write-Host "================================"
Write-Host ""

Start-Transcript -Path '$TranscriptLocation'
	
Write-Host ""
Write-Host "================================"
Write-Host "       Network Information      "
Write-Host "================================"
Write-Host ""
Write-Host "Note: You will be entering all of pertinent network information"
Write-Host "      to do a ping sweep and tcp port scan. This is less"
Write-Host "      efficient than using nmap or massscan."
Write-Host ""
	
$FirstOctet = Read-Host "Enter the first octet"
$SecondOctet = Read-Host "Enter the second octet"
$ThirdOctet = Read-Host "Enter the third octet"
$FourthOctet = 1
	
$Subnet = "$FirstOctet.$SecondOctet.$ThirdOctet."
	
Write-Host ""
Write-Host "Note: Press 'Enter' twice when you have entered all of the"
Write-Host "      ports you want to use."
Write-Host ""
	
$TCPPorts = @()

do {
	$Port = (Read-Host "Enter the TCP Port")
	if ($Port -ne '') {$TCPPorts += $Port}
	}

until ($Port -eq '')
	
$ErrorActionPreference = 'SilentlyContinue'
$ConnectedHosts = @()
	
Write-Host ""
Write-Host "================================"
Write-Host "Populating Live Hosts...        "
Write-Host "================================"
Write-Host ""
	
while ($FourthOctet -le 255) {
    $IPAddress = $Subnet+$FourthOctet
    if(!(Test-Connection -Count 1 -ComputerName $IPAddress | Select-Object IPV4Address)) {}
    else{
        $ConnectedHosts+= $IPAddress
        Write-Host $IPAddress
        }
    $FourthOctet++
    }
	
Write-Host ""
	
foreach ($ConnectedHost in $ConnectedHosts) {
    Write-Host "==============================="
    Write-Host "IP Address : $ConnectedHost   "
    Write-Host "==============================="
    foreach ($TCPPort in $TCPPorts) {
        Write-Host "Testing Port: $TCPPort"
        try {$Socket = New-Object System.Net.Sockets.TcpClient($ConnectedHost,$TCPPort)}
        catch {}
        if ($Socket.connected) {
            Write-Host "Port $TCPPort is OPEN."
            Write-Output "Port $TCPPort is OPEN." | Add-Content '$FileLocation'
            $Socket.close()
            $Socket.dispose()
           }
        }
    }
	
Write-Host "================================"
Write-Host "Stopping Transcript...          "
Write-Host "================================"
Write-Host ""
	
Stop-Transcript
	
Write-Host ""
Write-Host "================================"
Write-Host "Getting counts for open ports..."
Write-Host "================================"
Write-Host ""
	
foreach ($TCPPort in $TCPPorts) {
    $PortCount = (Get-Content $FileLocation | Select-String "Port $TCPPort is OPEN.").Count
    Write-Host "There are $PortCount instances of tcp port $TCPPort open."
    }
	
Write-Host ""
Write-Host "================================"
Write-Host "All actions have been completed."
Write-Host "================================"
Write-Host ""
