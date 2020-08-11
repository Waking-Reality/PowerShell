Clear-Host

$Host.UI.RawUI.WindowTitle = “PowerShell Active Directory Recursive Group Iteration Tool”

$File_Path = Read-Host "Enter the file path where you would like to store the CSV"
$Distribution_Group = Read-Host "Enter the Distribution Group you want to get all of the EUs from"
Get-ADGroupMember $Distribution_Group -Recursive | Select-Object SamAccountName | Sort-Object SamAccountName| Export-Csv $File_Path\$Distribution_Group.csv -NoTypeInformation; (Get-Content -Path $File_Path\$Distribution_Group.csv -Raw) -replace 'SamAccountName','Recipients' | Set-Content -Path $File_Path\$Distribution_Group.csv
Start-Process explorer.exe "$File_Path"

Clear-Host
