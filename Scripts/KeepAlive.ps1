$WShell = New-Object -Com "Wscript.Shell"; while (1) {$WShell.SendKeys("{SCROLLLOCK}"); sleep -Milliseconds 1}
