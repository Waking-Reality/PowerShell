# Define Choices 1-10
 $1 = "PLACEHOLDER"
 $2 = "PLACEHOLDER"
 $3 = "PLACEHOLDER"
 $4 = "PLACEHOLDER"
 $5 = "PLACEHOLDER"
 $6 = "PLACEHOLDER"
 $7 = "PLACEHOLDER"
 $8 = "PLACEHOLDER"
 $9 = "PLACEHOLDER"
$10 = "PLACEHOLDER"

# Define a function to display the menu
function Show-Menu {
    # Clear the screen
    Clear-Host

    # Display the menu options
    Write-Host "Menu:"
    Write-Host ""
    Write-Host " 1. $1"
    Write-Host " 2. $2"
    Write-Host " 3. $3"
    Write-Host " 4. $4"
    Write-Host " 5. $5"
    Write-Host " 6. $6"
    Write-Host " 7. $7"
    Write-Host " 8. $8"
    Write-Host " 9. $9"
    Write-Host "10. $10"
    Write-Host "11. Quit"
    Write-Host ""
    Write-Host "Enter your selection: " -NoNewline
}

# Show the menu and get the user's choice
Show-Menu
$choice = Read-Host

# Loop until the user selects the Quit option
while ($choice -ne "11") {
    # Process the user's choice
    switch ($choice) {
        "1" {
            # Choice 1 code goes here
            Write-Host ""
            Write-Host "You selected $1"
            Write-Host ""
            # Enter code below this line
            
        }
        "2" {
            # Choice 2 code goes here
            Write-Host ""
            Write-Host "You selected $2"
            Write-Host ""
            # Enter code below this line

        }
        "3" {
            # Choice 3 code goes here
            Write-Host ""
            Write-Host "You selected $3"
            Write-Host ""
            # Enter code below this line

        }
        "4" {
            # Choice 4 code goes here
            Write-Host ""
            Write-Host "You selected $4"
            Write-Host ""
            # Enter code below this line

        }
        "5" {
            # Choice 5 code goes here
            Write-Host ""
            Write-Host "You selected $5"
            Write-Host ""
            # Enter code below this line

        }
        "6" {
            # Choice 6 code goes here
            Write-Host ""
            Write-Host "You selected $6"
            Write-Host ""
            # Enter code below this line

        }
        "7" {
            # Choice 7 code goes here
            Write-Host ""
            Write-Host "You selected $7"
            Write-Host ""
            # Enter code below this line
        }
        "8" {
            # Choice 8 code goes here
            Write-Host ""
            Write-Host "You selected $8"
            Write-Host ""
            # Enter code below this line

        }
        "9" {
            # Choice 9 code goes here
            Write-Host ""
            Write-Host "You selected $9"
            Write-Host ""
            # Enter code below this line

        }
        "10" {
            # Choice 10 code goes here
            Write-Host ""
            Write-Host "You selected $10"
            Write-Host ""
            # Enter code below this line

        }
        default {
            Write-Host "Invalid selection"
        }
    }

    # Wait for the user to press a key before showing the menu again
    Write-Host ""
    Write-Host "Press any key to continue..."
    $null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

    # Show the menu and get the user's choice
    Show-Menu
    $choice = Read-Host
}

# Quit the script
Write-Host ""
Write-Host "Quitting..."
