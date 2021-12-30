Clear-Host

Write-Host "================================"
Write-Host ""
Write-Host "Fahrenheit to Celsius Calculator"
Write-Host ""
Write-Host "================================"
Write-Host ""

$F = Read-Host "What's the temperature in Fahrenheit that you want to convert to Celsius?"

$C = ($F - 32) * (5 / 9)
$C = [math]::Round($C,2)

Write-Host ""
Write-Host "$F° Fahrenheit is $C° in Celsius."
