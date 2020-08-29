Clear-Host

Write-Host "


 ▄▄▄      ▓█████▄   ██████    ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒████▄    ▒██▀ ██▌▒██    ▒    ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
▒██  ▀█▄  ░██   █▌░ ▓██▄      ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░██▄▄▄▄██ ░▓█▄   ▌  ▒   ██▒   ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
 ▓█   ▓██▒░▒████▓ ▒██████▒▒     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒▒   ▓▒█░ ▒▒▓  ▒ ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
  ▒   ▒▒ ░ ░ ▒  ▒ ░ ░▒  ░ ░       ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
  ░   ▒    ░ ░  ░ ░  ░  ░       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
      ░  ░   ░          ░                  ░ ░      ░ ░      ░  ░
           ░                                                     
                                                                                      

This tool will find all Alternate Data Streams that are located 
on a Windows NTFS directory structure. Good luck hunting.
"

Start-Sleep -Seconds 5

Clear-Host

Write-Host "


 ▄▄▄      ▓█████▄   ██████    ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒████▄    ▒██▀ ██▌▒██    ▒    ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
▒██  ▀█▄  ░██   █▌░ ▓██▄      ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░██▄▄▄▄██ ░▓█▄   ▌  ▒   ██▒   ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
 ▓█   ▓██▒░▒████▓ ▒██████▒▒     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒▒   ▓▒█░ ▒▒▓  ▒ ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
  ▒   ▒▒ ░ ░ ▒  ▒ ░ ░▒  ░ ░       ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
  ░   ▒    ░ ░  ░ ░  ░  ░       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
      ░  ░   ░          ░                  ░ ░      ░ ░      ░  ░
           ░                                                     

                                                                                         
Searching for Alternate Data Streams...
"

Start-Sleep -Seconds 5

Clear-Host

Write-Host "


 ▄▄▄      ▓█████▄   ██████    ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒████▄    ▒██▀ ██▌▒██    ▒    ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
▒██  ▀█▄  ░██   █▌░ ▓██▄      ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░██▄▄▄▄██ ░▓█▄   ▌  ▒   ██▒   ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
 ▓█   ▓██▒░▒████▓ ▒██████▒▒     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒▒   ▓▒█░ ▒▒▓  ▒ ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
  ▒   ▒▒ ░ ░ ▒  ▒ ░ ░▒  ░ ░       ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
  ░   ▒    ░ ░  ░ ░  ░  ░       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
      ░  ░   ░          ░                  ░ ░      ░ ░      ░  ░
           ░                                                     

                                                                                        
"

Get-Item -Path * -Stream * | Select-Object FileName,Stream
