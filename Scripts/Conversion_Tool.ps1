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
    Write-Host "║ 5: Convert T9.                                    ║"
    Write-Host "║ 6: Decode BASE64.                                 ║"
    Write-Host "║ 7: Encode BASE64.                                 ║"
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
			<# T9 Reference Table
			
			   2 = "A"
			  22 = "B"
			 222 = "C"
			   3 = "D"
			  33 = "E"
			 333 = "F"
			   4 = "G"
			  44 = "H"
			 444 = "I"
			   5 = "J"
			  55 = "K"
			 555 = "L"
			   6 = "M"
			  66 = "N"
			 666 = "O"
			   7 = "P"
			  77 = "Q"
			 777 = "R"
			7777 = "S"
			   8 = "T"
			  88 = "U"
			 888 = "V"
			   9 = "W"
			  99 = "X"
			 999 = "Y"
			9999 = "Z"
			
			#>
			
			# Remove $T9 Value
			
			Clear-Variable T9
			
			# Character Addition Major Loop
			
			$Alive = "y"
			
			While ($Alive -eq "y") {
            Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════════════╗"
            Write-Host "║                PowerShell Conversion Tool                 ║"
            Write-Host "╠═══════════════════╦═══════════════════╦═══════════════════╣"
            Write-Host "║ 1 = . , ' @ - : / ║     2 = A B C     ║     3 = D E F     ║"
            Write-Host "╠═══════════════════╬═══════════════════╬═══════════════════╣"
            Write-Host "║     4 = G H I     ║     5 = J K L     ║     6 = M N O     ║"
            Write-Host "╠═══════════════════╬═══════════════════╬═══════════════════╣"
            Write-Host "║   7 = P Q R S     ║     8 = T U V     ║   9 = W X Y Z     ║"
            Write-Host "╠═══════════════════╩═══════════════════╩═══════════════════╣"
            Write-Host "║                        0 = 'space'                        ║"
            Write-Host "╚═══════════════════════════════════════════════════════════╝"
            Write-Host ""
            Write-Host "Your current T9 string is: $T9"
            Write-Host ""
    			$String = Read-Host "
Enter your T9 string of single numbers"
			
			# Translate $String to T9 Character Loop
			
			if ($String -eq 2) {
        			Write-Host ""
        			Write-Host "A"
        			Write-Host ""
        			$T9_A = "A"
        			$T9 = $T9+$T9_A
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 22){
        			Write-Host ""
        			Write-Host "B"
        			Write-Host ""
        			$T9_B = "B"
        			$T9 = $T9+$T9_B
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 222){
        			Write-Host ""
        			Write-Host "C"
        			Write-Host ""
        			$T9_C = "C"
        			$T9 = $T9+$T9_C
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 3){
        			Write-Host ""
        			Write-Host "D"
        			Write-Host ""
        			$T9_D = "D"
        			$T9 = $T9+$T9_D
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 33){
        			Write-Host ""
        			Write-Host "E"
        			Write-Host ""
        			$T9_E = "E"
        			$T9 = $T9+$T9_E
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 333){
        			Write-Host ""
        			Write-Host "F"
        			Write-Host ""
        			$T9_F = "F"
        			$T9 = $T9+$T9_F
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 4){
        			Write-Host ""
        			Write-Host "G"
        			Write-Host ""
        			$T9_G = "G"
        			$T9 = $T9+$T9_G
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 44){
        			Write-Host ""
        			Write-Host "H"
        			Write-Host ""
        			$T9_H = "H"
        			$T9 = $T9+$T9_H
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 444){
        			Write-Host ""
        			Write-Host "I"
        			Write-Host ""
			        			$T9_I = "I"
        			$T9 = $T9+$T9_I
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 5){
        			Write-Host ""
        			Write-Host "J"
        			Write-Host ""
        			$T9_J = "J"
        			$T9 = $T9+$T9_J
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 55){
        			Write-Host ""
        			Write-Host "K"
        			Write-Host ""
        			$T9_K = "K"
        			$T9 = $T9+$T9_K
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 555){
        			Write-Host ""
        			Write-Host "L"
        			Write-Host ""
        			$T9_L = "L"
        			$T9 = $T9+$T9_L
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 6){
        			Write-Host ""
        			Write-Host "M"
        			Write-Host ""
        			$T9_M = "M"
        			$T9 = $T9+$T9_M
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 66){
        			Write-Host ""
        			Write-Host "N"
        			Write-Host ""
        			$T9_N = "N"
        			$T9 = $T9+$T9_N
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 666){
        			Write-Host ""
        			Write-Host "O"
        			Write-Host ""
        			$T9_O = "O"
        			$T9 = $T9+$T9_O
			        Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 7){
        			Write-Host ""
        			Write-Host "P"
        			Write-Host ""
        			$T9_P = "P"
        			$T9 = $T9+$T9_P
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 77){
        			Write-Host ""
        			Write-Host "Q"
        			Write-Host ""
        			$T9_Q = "Q"
        			$T9 = $T9+$T9_Q
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 777){
        			Write-Host ""
        			Write-Host "R"
        			Write-Host ""
        			$T9_R = "R"
        			$T9 = $T9+$T9_R
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 7777){
        			Write-Host ""
        			Write-Host "S"
        			Write-Host ""
        			$T9_S = "S"
        			$T9 = $T9+$T9_S
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 8){
        			Write-Host ""
        			Write-Host "T"
        			Write-Host ""
        			$T9_T = "T"
        			$T9 = $T9+$T9_T
					Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 88){
        			Write-Host ""
        			Write-Host "U"
        			Write-Host ""
        			$T9_U = "U"
        			$T9 = $T9+$T9_U
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 888){
        			Write-Host ""
        			Write-Host "V"
        			Write-Host ""
        			$T9_V = "V"
        			$T9 = $T9+$T9_V
			        Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 9){
        			Write-Host ""
        			Write-Host "W"
        			Write-Host ""
        			$T9_W = "W"
        			$T9 = $T9+$T9_W
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 99){
        			Write-Host ""
        			Write-Host "X"
        			Write-Host ""
        			$T9_X = "X"
			        $T9 = $T9+$T9_X
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 999){
        			Write-Host ""
        			$T9_Y = "Y"
        			Write-Host ""
        			$T9 = $T9+$T9_Y
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq 9999){
        			Write-Host ""
        			Write-Host "Z"
        			Write-Host ""
        			$T9_Z = "Z"
        			$T9 = $T9+$T9_Z
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "0"){
        			Write-Host ""
        			Write-Host " "
        			Write-Host ""
        			$T9_Space = " "
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "1"){
        			Write-Host ""
        			Write-Host "."
        			Write-Host ""
        			$T9_Space = "."
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "11"){
        			Write-Host ""
        			Write-Host ","
        			Write-Host ""
        			$T9_Space = ","
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "111"){
        			Write-Host ""
        			Write-Host "'"
        			Write-Host ""
        			$T9_Space = "'"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "1111"){
        			Write-Host ""
        			Write-Host "@"
        			Write-Host ""
        			$T9_Space = "@"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "11111"){
        			Write-Host ""
        			Write-Host "?"
        			Write-Host ""
        			$T9_Space = "?"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "111111"){
        			Write-Host ""
        			Write-Host "!"
        			Write-Host ""
        			$T9_Space = "!"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "1111111"){
        			Write-Host ""
        			Write-Host "-"
        			Write-Host ""
        			$T9_Space = "-"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "11111111"){
        			Write-Host ""
        			Write-Host ":"
        			Write-Host ""
        			$T9_Space = ":"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
    			} elseif ($String -eq "111111111"){
        			Write-Host ""
        			Write-Host "/"
        			Write-Host ""
        			$T9_Space = "/"
        			$T9 = $T9+$T9_Space
        			Write-Host Your T9 String is as follows: $T9
			}

			Write-Host ""
			$Alive = Read-Host -Prompt "Would you like to add more T9 values?

Press 'enter' or type 'y' and press 'enter' to continue' and type anything else and press 'enter' to return to the main menu"
                if ("Choice"::IsNullOrWhiteSpace($Alive)) {
                    $Alive = "y"
                 }
			}
			Clear-Host
            Write-Host "╔═══════════════════════════════════════════════════╗"
            Write-Host "║            PowerShell Conversion Tool             ║"
            Write-Host "╚═══════════════════════════════════════════════════╝"
            Write-Host ""
			Write-Host Your Answer: $T9
            Write-Host ""
            $T9 | clip
            Write-Host "Your T9 string has been copied to your clipboard."
			Write-Host ""
			            }
        '6' {
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
        '7' {
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
