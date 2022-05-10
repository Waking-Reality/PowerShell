Clear-Host

###### Initial Inputs ######

Write-Host "============================================"
Write-Host ""
Write-Host "NOTES:"
Write-Host ""
Write-Host "The first number will be the total sum."
Write-Host "The second number will stay constant."
Write-Host "The third number will incriment (+) by one."
Write-Host "The fourth number will decrement (-) by one."
Write-Host ""
Write-Host "============================================"
Write-Host ""

[int]$S = Read-Host "Enter the 'sum' number"
[int]$N1 = Read-Host "Enter the contstant number"
$M = ($S-$N1)
Write-Host ""
Write-Host "You have $M left for the other numbers."
Write-Host ""
[int]$N2 = Read-Host "Enter the declinating number"
[int]$N3 = Read-Host "Enter the inclinating number"

Clear-Host

###### Baseline Math ######

$M1 = ($N2-1)
$A1 = ($N3+1)
$M2 = ($N2-2)
$A2 = ($N3+2)
$M3 = ($N2-3)
$A3 = ($N3+3)
$M4 = ($N2-4)
$A4 = ($N3+4)
$M5 = ($N2-5)
$A5 = ($N3+5)
$M6 = ($N2-6)
$A6 = ($N3+6)
$M7 = ($N2-7)
$A7 = ($N3+7)
$M8 = ($N2-8)
$A8 = ($N3+8)
$M9 = ($N2-9)
$A9 = ($N3+9)

###### Estimation Table ######

Write-Host ""
Write-Host "N1 N2 N3 | SM | MULT"
Write-Host "===================="
Write-Host $N1  $N2  $N3  "|"  ($N1+$N2+$N3)  "|"  ($N1*$N2*$N3)
Write-Host "===================="
Write-Host $N1  $A1  $M1  "|"  ($N1+$A1+$M1)  "|"  ($N1*$A1*$M1)
Write-Host "===================="
Write-Host $N1  $A2  $M2  "|"  ($N1+$A2+$M2)  "|"  ($N1*$A2*$M2)
Write-Host "===================="
Write-Host $N1  $A3  $M3  "|"  ($N1+$A3+$M3)  "|"  ($N1*$A3*$M3)
Write-Host "===================="
Write-Host $N1  $A4  $M4  "|"  ($N1+$A4+$M4)  "|"  ($N1*$A4*$M4)
Write-Host "===================="
Write-Host $N1  $A5  $M5  "|"  ($N1+$A5+$M5)  "|"  ($N1*$A5*$M5)
Write-Host "===================="
Write-Host $N1  $A6  $M6  "|"  ($N1+$A6+$M6)  "|"  ($N1*$A6*$M6)
Write-Host "===================="
Write-Host $N1  $A7  $M7  "|"  ($N1+$A7+$M7)  "|"  ($N1*$A7*$M7)
Write-Host "===================="
Write-Host $N1  $A8  $M8  "|"  ($N1+$A8+$M8)  "|"  ($N1*$A8*$M8)
Write-Host "===================="
Write-Host $N1  $A9  $M9  "|"  ($N1+$A9+$M9)  "|"  ($N1*$A9*$M9)
Write-Host ""
