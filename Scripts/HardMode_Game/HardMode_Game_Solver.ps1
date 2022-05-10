Clear-Host
[console]::WindowWidth=60 
[console]::WindowHeight=20
Write-Host "
  _    _               _   __  __           _      
 | |  | |             | | |  \/  |         | |     
 | |__| | __ _ _ __ __| | | \  / | ___   __| | ___ 
 |  __  |/ _`` | '__/ _`` | | |\/| |/ _ \ / _`` |/ _ \
 | |  | | (_| | | | (_| | | |  | | (_) | (_| |  __/
 |_|  |_|\__,_|_|  \__,_| |_|  |_|\___/ \__,_|\___|
"
Write-Host ""
$ADD = Read-Host "Enter the Sum of 3 Numbers"
$PROD = Read-Host "Enter the Product of 3 Numbers"
Write-Host ""
For ($a = 0; $a -lt $ADD; $a++) {
    For ($b = $a ; $b -lt $ADD; $b++) {
        For ($c = $b ; $c -lt $ADD; $c++) {
            if ( ($a * $b * $c -eq $PROD) -and ($a + $b +$c -eq $ADD) ){
                $result = "$a $b $c"
                $result | clip
                Write-Host "========="
                Write-Host "  $a $b $c"
                Write-Host "========="
            }
        }
    }
}
Write-Host ""
Write-Host "The answer has been copied to your clipboard."
Write-Host ""
[Console]::Beep(130, 100)
[Console]::Beep(262, 100)
[Console]::Beep(330, 100)
[Console]::Beep(392, 100)
[Console]::Beep(523, 100)
[Console]::Beep(660, 100)
[Console]::Beep(784, 300)
[Console]::Beep(660, 300)
[Console]::Beep(146, 100)
[Console]::Beep(262, 100)
[Console]::Beep(311, 100)
[Console]::Beep(415, 100)
[Console]::Beep(523, 100)
[Console]::Beep(622, 100)
[Console]::Beep(831, 300)
[Console]::Beep(622, 300)
[Console]::Beep(155, 100)
[Console]::Beep(294, 100)
[Console]::Beep(349, 100)
[Console]::Beep(466, 100)
[Console]::Beep(588, 100)
[Console]::Beep(699, 100)
[Console]::Beep(933, 300)
[Console]::Beep(933, 100)
[Console]::Beep(933, 100)
[Console]::Beep(933, 100)
[Console]::Beep(1047, 400)
pause
<#
Created in compilation between Waking_Reality and Whobetter.
Main scripting by Whobetter.
Beautifying and sound by Waking_Reality.
#>
