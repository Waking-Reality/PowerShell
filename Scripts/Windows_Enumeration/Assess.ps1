########## Timeline Analysis ##########

Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.CreationTime -gt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(-2) -and $_.CreationTime -lt ((Get-ChildItem '[PATH-TO-IOC]').CreationTime).AddMinutes(2)} | Select-Object FullName,CreationTime

########## Log Analysis: Privilege Escalation ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4728 -or $_.id -eq 4732 -or $_.id -eq 4756} | Select-Object -Last 1  | Select-Object -ExpandProperty message

########## Log Analysis: Password Changes ##########

Get-WinEvent -Oldest | Where-Object {$_.id -eq 4723 -or $_.id -eq 4724} | Select-Object -ExpandProperty message
