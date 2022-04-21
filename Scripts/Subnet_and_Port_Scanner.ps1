Clear-Host

<#

<#

#########################
#                       #
#     FORM CREATION     #
#                       #
#########################

#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$GUI                             = New-Object system.Windows.Forms.Form
$GUI.ClientSize                  = New-Object System.Drawing.Point(280,150)
$GUI.text                        = "Subnet/Port Scanner"
$GUI.TopMost                     = $true
$GUI.BackColor                   = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Octet 01"
$Label1.AutoSize                 = $false
$Label1.width                    = 80
$Label1.height                   = 20
$Label1.location                 = New-Object System.Drawing.Point(20,10)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 60
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(20,40)
$TextBox1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Octet 02"
$Label2.AutoSize                 = $false
$Label2.width                    = 80
$Label2.height                   = 20
$Label2.location                 = New-Object System.Drawing.Point(100,10)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label2.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $false
$TextBox2.width                  = 60
$TextBox2.height                 = 20
$TextBox2.location               = New-Object System.Drawing.Point(100,40)
$TextBox2.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "Octet 03"
$Label3.AutoSize                 = $false
$Label3.width                    = 80
$Label3.height                   = 20
$Label3.location                 = New-Object System.Drawing.Point(180,10)
$Label3.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$TextBox3                        = New-Object system.Windows.Forms.TextBox
$TextBox3.multiline              = $false
$TextBox3.width                  = 60
$TextBox3.height                 = 20
$TextBox3.location               = New-Object System.Drawing.Point(180,40)
$TextBox3.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = 'Ports: "##","##"'
$Label4.AutoSize                 = $false
$Label4.width                    = 140
$Label4.height                   = 20
$Label4.location                 = New-Object System.Drawing.Point(100,80)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$TextBox4                        = New-Object system.Windows.Forms.TextBox
$TextBox4.multiline              = $false
$TextBox4.width                  = 140
$TextBox4.height                 = 20
$TextBox4.location               = New-Object System.Drawing.Point(100,110)
$TextBox4.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "SCAN"
$Button1.width                   = 60
$Button1.height                  = 60
$Button1.location                = New-Object System.Drawing.Point(20,80)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',12)
$Button1.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#b8e986")

$GUI.controls.AddRange(@($Button1,$Label1,$Label2,$Label3,$Label4,$TextBox1,$TextBox2,$TextBox3,$TextBox4))

[void]$GUI.ShowDialog()

#>

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
