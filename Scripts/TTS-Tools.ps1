function TTS-Tools {

Clear-Host

#################
#     NOTES     #
#################

<#

Just a basic script to be used when playing general tabletop roleplaying games.

#>

##################
#     ASK...     #
##################

Write-Host '======================================================='
Write-Host ''

$Object = Read-Host "Enter the number of sides you would like to use"
$Multiple = Read-Host "Enter the amount you would like to use"

Write-Host ''
Write-Host '======================================================='

###############################
#     YE SHALL RECEIVE!!!     #
###############################

Write-Host ''

$Iteration = 1
$Choice = (1.. + "$Object")

Do {

$Addition = $Choice | Get-Random 
Write-Host "You have received a $Addition!"
$Total = $Total + $Addition
$Iteration++

}

While (

$Iteration -le $Multiple

)

Write-Host ''
Write-Host '======================================================='

#####################
#     TOTALS!!!     #
#####################

Write-Host ''

Write-Host "You have received a total of $Total!"

Write-Host ''
Write-Host '======================================================='

###############################
#     Modifiers anyone???     #
###############################

Write-Host ''

$Modifier = 0
$Modifier = Read-Host "Input your modifiers"

Write-Host ''
Write-Host '======================================================='

####################
#     Finality     #
####################

Write-Host ''

$Finality = $Total + $Modifier
Write-Host "Your total engagement is $Finality!"
Write-Host ''
Write-Host '======================================================='
}

Clear-Host
