Clear-Host

Start-Sleep -Seconds 5

$Loop = $true

while ($Loop -eq $true){
    Start-Sleep -Milliseconds 500
    [System.Windows.Forms.SendKeys]::SendWait("{RIGHT}")
}
