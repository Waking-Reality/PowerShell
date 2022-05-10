##########################################
#                                        #
# Created by Waking_Reality on 31JAN2022 #
# Quality of life update by WhoBetter    #
#                                        #
##########################################

Clear-Host

#############################
#                           #
# Let's get the wordlist... #
#                           #
#############################

Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Downloading the wordlist..."
New-Item -Path 'C:\' -ItemType Directory -Name Wordle -Force | Out-Null
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://raw.githubusercontent.com/Waking-Reality/PowerShell/master/Scripts/Resources/Five_Word_List.txt","C:\Wordle\Five_Word_List.txt")
Start-Sleep -Seconds 5
Clear-Host

###################
#                 #
# Time to Wordle! #
#                 #
###################

Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Directions: Take note of the letters that are in green and orange boxes. For the the `"Leftover      "
Write-Host "Letters`" section, enter all of the letters that are highlighted and enter them into each prompt. For"
Write-Host "columns that have an orange box in them, enter all of the leftover letters except the ones in orange "
Write-Host "boxes. For columns with a green box in them, only enter that letter on at the prompt. The columns are"
Write-Host "numbered one through five from the left going right.                                                 "
Write-Host ""
Write-Host "For the `"Known Letters`" section, enter one unique letter that was leftover at each prompt. If you  "
Write-Host "run out of them, press 'ENTER' to bypass that prompt.                                                "
Write-Host ""
Write-Host "This tool will only help you estimate guesses and not necessarily solve the puzzle. Good luck!       "
Write-Host ""
$Puzzle = Read-Host "Enter the number for the Wordle puzzle you are working on"
Write-Host ""
Read-Host “Press 'ENTER' to continue after you have read the directions...”

####################################
#                                  #
# Time to puzzle out of our minds! #
#                                  #
####################################

Start-Process "chrome.exe" "https://www.devangthakkar.com/wordle_archive/?$Puzzle",'--profile-directory="Default"'
Start-Sleep -Seconds 2
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{a}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{r}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{i}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{e}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{l}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{b}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{o}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{u}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{g}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{h}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{t}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{o}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{n}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{e}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{s}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{d}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{u}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{m}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{p}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{y}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("%{tab}")

############################################
#                                          #
# Let's get some data from the end user... #
#                                          #
############################################

Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Note: You'll need to use [alt + tab] for this section."
Write-Host ""
$Letter_1 = Read-Host "Enter the letter(s) for letter one"
$Letter_2 = Read-Host "Enter the letter(s) for letter two"
$Letter_3 = Read-Host "Enter the letter(s) for letter three"
$Letter_4 = Read-Host "Enter the letter(s) for letter four"
$Letter_5 = Read-Host "Enter the letter(s) for letter five"
Write-Host ""
$Known_1 = Read-Host "Enter the first known letter or press 'ENTER'"
$Known_2 = Read-Host "Enter the second known letter or press 'ENTER'"
$Known_3 = Read-Host "Enter the third known letter or press 'ENTER'"
$Known_4 = Read-Host "Enter the fourth known letter or press 'ENTER'"
$Known_5 = Read-Host "Enter the fifth known letter or press 'ENTER'"
Write-Host ""

#############################
#                           #
# Time to process the data! #
#                           #
#############################

Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Searching the wordlist..."
Write-Host ""
$Unused_Letters = "cfjkqvwxz"
$Letter_1 = "$Unused_Letters$Letter_1"
$Letter_1 = "[$Unused_Letters$Letter_1]"
$Letter_2 = "[$Unused_Letters$Letter_2]"
$Letter_3 = "[$Unused_Letters$Letter_3]"
$Letter_4 = "[$Unused_Letters$Letter_4]"
$Letter_5 = "[$Unused_Letters$Letter_5]"
$Letter_RegEx = "$Letter_1$Letter_2$Letter_3$Letter_4$Letter_5"
$Known_RegEx = "[^$Known_1|$Known_2|$Known_3|$Known_4|$Known_5]"
Start-Sleep -Seconds 5

##################################
#                                #
# Hopefully it's one of these... #
#                                #
##################################

Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "The following guesses are probable answers:"
Get-Content C:\Wordle\Five_Word_List.txt | Select-String -Pattern $Letter_RegEx -AllMatches | Out-File C:\Wordle\Probable.txt
Get-Content C:\Wordle\Probable.txt
Write-Host "The following guesses are highly probable answers:"
Get-Content C:\Wordle\Probable.txt | Select-String -Pattern $Known_RegEx -NotMatch | Out-File C:\Wordle\HighlyProbable.txt
Get-Content C:\Wordle\HighlyProbable.txt
Read-Host “Press 'ENTER' to continue...”

#################
#               #
# Cleanup Time! #
#               #
#################

Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"

Write-Host ""
Remove-Item C:\Wordle -Recurse -Force
Write-Host "All changes to your system have been reverted."
Write-Host ""
Write-Host "Thank you for using this Wordle estimator!"
Write-Host ""
Start-Sleep -Seconds 5
Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Exiting in five..."
Start-Sleep -Seconds 1
Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Exiting in four..."
Start-Sleep -Seconds 1
Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Exiting in three..."
Start-Sleep -Seconds 1
Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Exiting in two..."
Start-Sleep -Seconds 1
Clear-Host
Write-Host "
 __          ______  _____  _____  _      ______ 
 \ \        / / __ \|  __ \|  __ \| |    |  ____|
  \ \  /\  / / |  | | |__) | |  | | |    | |__   
   \ \/  \/ /| |  | |  _  /| |  | | |    |  __|  
    \  /\  / | |__| | | \ \| |__| | |____| |____ 
     \/  \/   \____/|_|  \_\_____/|______|______|
"
Write-Host ""
Write-Host "Exiting in one."
Start-Sleep -Seconds 1
