Clear-Host

"
   _____                                       _    _           _              
  / ____|                                     | |  | |         | |              
 | |     ___  _ __ ___  _ __   __ _ _ __ ___  | |__| | __ _ ___| |__   ___  ___
 | |    / _ \| '_ `` _ \| '_ \ / _`` | '__/ _ \ |  __  |/ _`` / __| '_ \ / _ \/ __|
 | |___| (_) | | | | | | |_) | (_| | | |  __/ | |  | | (_| \__ \ | | |  __/\__ \
  \_____\___/|_| |_| |_| .__/ \__,_|_|  \___| |_|  |_|\__,_|___/_| |_|\___||___/
                       | |                                                      
                       |_|                                                      
"

Get-ChildItem C:\Users | Select-Object Name | Format-Table -HideTableHeaders

$UserName = Read-Host "Type a name from the list above"
Write-Host ""
$FileName = Read-Host "Type the absolute path for the file you want to compare hashes against"

Clear-Host

Get-ChildItem C:\Users\$UserName\Documents\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash,Path | Out-File C:\Users\$env:USERNAME\Desktop\HashesInformation.txt
Get-ChildItem C:\Users\$UserName\Downloads\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash,Path  | Format-Table -HideTableHeaders  | Out-File C:\Users\$env:USERNAME\Desktop\HashesInformation.txt -Append
Get-ChildItem C:\Users\$UserName\Desktop\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash,Path  | Format-Table -HideTableHeaders  | Out-File C:\Users\$env:USERNAME\Desktop\HashesInformation.txt -Append
(Get-Content C:\Users\$env:USERNAME\Desktop\HashesInformation.txt) | Where-Object {$_.trim() -ne "" } | Set-Content C:\Users\$env:USERNAME\Desktop\HashesInformation.txt

Get-ChildItem C:\Users\$UserName\Documents\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash | Format-Table -HideTableHeaders | Out-File C:\Users\$env:USERNAME\Desktop\Hashes.txt
Get-ChildItem C:\Users\$UserName\Downloads\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash  | Format-Table -HideTableHeaders | Out-File C:\Users\$env:USERNAME\Desktop\Hashes.txt -Append
Get-ChildItem C:\Users\$UserName\Desktop\* -Force -ErrorAction SilentlyContinue | ForEach-Object {Get-FileHash $_ -Algorithm SHA256} | Select-Object Hash  | Format-Table -HideTableHeaders | Out-File C:\Users\$env:USERNAME\Desktop\Hashes.txt -Append
(Get-Content C:\Users\$env:USERNAME\Desktop\Hashes.txt) | Where-Object {$_.trim() -ne "" } | Set-Content C:\Users\$env:USERNAME\Desktop\Hashes.txt

$Objects = @{
ReferenceObject = (Get-Content $FileName)
DifferenceObject = (Get-Content C:\Users\$env:USERNAME\Desktop\Hashes.txt)
}
Compare-Object @Objects -ExcludeDifferent -IncludeEqual | Select-Object InputObject | Format-Table -HideTableHeaders | Out-File C:\Users\$env:USERNAME\Desktop\FoundHashes.txt
(Get-Content C:\Users\$env:USERNAME\Desktop\FoundHashes.txt) | Where-Object {$_.trim() -ne "" } | Set-Content C:\Users\$env:USERNAME\Desktop\FoundHashes.txt

(Get-Content C:\Users\$env:USERNAME\Desktop\FoundHashes.txt) | ForEach-Object {Select-String -Path C:\Users\$env:USERNAME\Desktop\HashesInformation.txt -Pattern $_} | Out-File C:\Users\$env:USERNAME\Desktop\MALWARE.txt
(Get-Content C:\Users\$env:USERNAME\Desktop\MALWARE.txt) | Where-Object {$_.trim() -ne "" } | Set-Content C:\Users\$env:USERNAME\Desktop\MALWARE.txt

Remove-Item C:\Users\$env:USERNAME\Desktop\Hashes.txt
Remove-Item C:\Users\$env:USERNAME\Desktop\HashesInformation.txt
Remove-Item C:\Users\$env:USERNAME\Desktop\FoundHashes.txt

Start-Process notepad.exe "C:\Users\$env:USERNAME\Desktop\MALWARE.txt"
