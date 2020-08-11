Clear-Host

$Host.UI.RawUI.WindowTitle = “PowerShell Conversion Tool”

function Show-Menu {
    Clear-Host
    Write-Host "╔═══════════════════════════════════════════════════╗"
    Write-Host "║            PowerShell Conversion Tool             ║"
    Write-Host "╠═══════════════════════════════════════════════════╣"
    Write-Host "║                                                   ║"
    Write-Host "║ 1: Convert Binary, (BASE2), to other bases.       ║"
    Write-Host "║ 2: Convert Octal, (BASE8), to other bases.        ║"
    Write-Host "║ 3: Convert Decimal, (BASE10), to other bases.     ║"
    Write-Host "║ 4: Convert Hexadecimal, (BASE16), to other bases. ║"
    Write-Host "║ 5: Decode BASE64.                                 ║"
    Write-Host "║ 6: Encode BASE64.                                 ║"
    Write-Host "║ Q: Quit PowerShell Conversion Tool.               ║"
    Write-Host "║                                                   ║"
    Write-Host "╚═══════════════════════════════════════════════════╝"
    }

do {
    Show-Menu
    Write-Host ""
    $End_User_Choice = Read-Host "Please make a selection"
    Write-Host ""

    switch ($End_User_Choice){
        '1' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE2 = Read-Host "Enter the Binay to be converted"
            Write-Host ""
            Write-Host "Octal       : " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE2,2)
            $Octal = [Convert]::ToString($Decimal,8)
            Write-Host "$Octal"
            Write-Host "Decimal     : " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE2,2)
            Write-Host "$Decimal"
            Write-Host "Hexadecimal : " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE2,2)
            $Hexadecimal = '{0:X}' -f $Decimal
            Write-Host "$Hexadecimal"
            Write-Host ""
            }
        '2' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE8 = Read-Host "Enter the OCTAL to be converted"
            Write-Host ""
            Write-Host "Binary: " -NoNewline
            $Decimal = [Convert]::ToString($BASE8,8)
            $Binary = [Convert]::ToString($Decimal,2)
            Write-Host "$Binary"
            Write-Host "Decimal: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE8,8)
            Write-Host "$Decimal"
            Write-Host "Hexadecimal: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE8,8)
            $Hexadecimal = '{0:X}' -f $Decimal
            Write-Host "$Hexadecimal"
            Write-Host ""
            }
        '3' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE10 = Read-Host "Enter the Decimal to be converted"
            Write-Host ""
            Write-Host "Binary: " -NoNewline
            $Binary = [Convert]::ToString($BASE10, 2)
            Write-Host "$Binary"
            Write-Host "Octal: " -NoNewline
            $Octal = [Convert]::ToString($BASE10,8)
            Write-Host "$Octal"
            Write-Host "Hexadecimal: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE10,10)
            $Hexadecimal = '{0:X}' -f $Decimal
            Write-Host "$Hexadecimal"
            Write-Host ""
            }
        '4' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE16 = Read-Host "Enter the Hexadecimal to be converted"
            $BASE16 = $BASE16.ToUpper()
            Write-Host ""
            Write-Host "Binary: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE16,16)
            $Binary = [Convert]::ToString($Decimal, 2)
            Write-Host "$Binary"
            Write-Host "Octal: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE16,16)
            $Octal = [Convert]::ToString($Decimal, 8)
            Write-Host "$Octal"
            Write-Host "Decimal: " -NoNewline
            $Decimal = [Convert]::ToInt32($BASE16,16)
            Write-Host "$Decimal"
            Write-Host ""
            }
        '5' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE64 = Read-Host 'Enter the string to be BASE64 decoded'
            Write-Host ""
            $BASE64_Decoded = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($BASE64))
            Write-Host "$BASE64_Decoded"
            Write-Host""
            $BASE64_Decoded | clip
            Write-Host "This BASE64 Decoded string has been copied to your clipboard."
            Write-Host ""
            }
        '6' {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
            $BASE64 = Read-Host 'Enter the string to be BASE64 encoded'
            Write-Host ""
            $BASE64_Bytes = [System.Text.Encoding]::UTF8.GetBytes($BASE64)
            $BASE64_Encoded = [Convert]::ToBase64String($BASE64_Bytes)
            Write-Host "$BASE64_Encoded"
            Write-Host ""
            $BASE64_Encoded | clip
            Write-Host "This BASE64 Encoded string has been copied to your clipboard."
            Write-Host ""
            }
        }
            pause
        }
    until ($End_User_Choice -eq 'q')
