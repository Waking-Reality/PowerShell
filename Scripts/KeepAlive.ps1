$WShell = New-Object -Com "Wscript.Shell"; while (1) {$WShell.SendKeys("{BREAK}"); sleep -Milliseconds 1}
