$WShell = New-Object -Com "Wscript.Shell"; while (1) {$WShell.SendKeys("{SCROLL}"); sleep -Milliseconds 1}
