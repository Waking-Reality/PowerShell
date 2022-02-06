Clear-Host

function Show-Menu {
    Clear-Host
    Write-Host "╔══════════════════════════════════════╗"
    Write-Host "║         Wordle Solution Tool         ║"
    Write-Host "╠══════════════════════════════════════╣"
    Write-Host "║                                      ║"
    Write-Host "║ #: Enter a number between 1 and 500. ║"
    Write-Host "║ Q: Quit Wordle Solution Tool.        ║"
    Write-Host "║                                      ║"
    Write-Host "╚══════════════════════════════════════╝"
    }

do {
    Show-Menu
    Write-Host ""
    $End_User_Choice = Read-Host "Please make a selection"
    Write-Host ""

    switch ($End_User_Choice){
		'1' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$1`"!"; Write-Host ""}
		'2' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$2`"!"; Write-Host ""}
		'3' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$3`"!"; Write-Host ""}
		'4' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$4`"!"; Write-Host ""}
		'5' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$5`"!"; Write-Host ""}
		'6' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$6`"!"; Write-Host ""}
		'7' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$7`"!"; Write-Host ""}
		'8' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$8`"!"; Write-Host ""}
		'9' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$9`"!"; Write-Host ""}
		'10' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$10`"!"; Write-Host ""}
		'11' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$11`"!"; Write-Host ""}
		'12' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$12`"!"; Write-Host ""}
		'13' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$13`"!"; Write-Host ""}
		'14' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$14`"!"; Write-Host ""}
		'15' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$15`"!"; Write-Host ""}
		'16' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$16`"!"; Write-Host ""}
		'17' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$17`"!"; Write-Host ""}
		'18' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$18`"!"; Write-Host ""}
		'19' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$19`"!"; Write-Host ""}
		'20' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$20`"!"; Write-Host ""}
		'21' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$21`"!"; Write-Host ""}
		'22' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$22`"!"; Write-Host ""}
		'23' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$23`"!"; Write-Host ""}
		'24' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$24`"!"; Write-Host ""}
		'25' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$25`"!"; Write-Host ""}
		'26' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$26`"!"; Write-Host ""}
		'27' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$27`"!"; Write-Host ""}
		'28' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$28`"!"; Write-Host ""}
		'29' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$29`"!"; Write-Host ""}
		'30' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$30`"!"; Write-Host ""}
		'31' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$31`"!"; Write-Host ""}
		'32' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$32`"!"; Write-Host ""}
		'33' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$33`"!"; Write-Host ""}
		'34' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$34`"!"; Write-Host ""}
		'35' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$35`"!"; Write-Host ""}
		'36' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$36`"!"; Write-Host ""}
		'37' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$37`"!"; Write-Host ""}
		'38' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$38`"!"; Write-Host ""}
		'39' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$39`"!"; Write-Host ""}
		'40' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$40`"!"; Write-Host ""}
		'41' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$41`"!"; Write-Host ""}
		'42' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$42`"!"; Write-Host ""}
		'43' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$43`"!"; Write-Host ""}
		'44' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$44`"!"; Write-Host ""}
		'45' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$45`"!"; Write-Host ""}
		'46' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$46`"!"; Write-Host ""}
		'47' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$47`"!"; Write-Host ""}
		'48' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$48`"!"; Write-Host ""}
		'49' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$49`"!"; Write-Host ""}
		'50' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$50`"!"; Write-Host ""}
		'51' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$51`"!"; Write-Host ""}
		'52' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$52`"!"; Write-Host ""}
		'53' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$53`"!"; Write-Host ""}
		'54' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$54`"!"; Write-Host ""}
		'55' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$55`"!"; Write-Host ""}
		'56' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$56`"!"; Write-Host ""}
		'57' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$57`"!"; Write-Host ""}
		'58' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$58`"!"; Write-Host ""}
		'59' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$59`"!"; Write-Host ""}
		'60' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$60`"!"; Write-Host ""}
		'61' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$61`"!"; Write-Host ""}
		'62' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$62`"!"; Write-Host ""}
		'63' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$63`"!"; Write-Host ""}
		'64' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$64`"!"; Write-Host ""}
		'65' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$65`"!"; Write-Host ""}
		'66' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$66`"!"; Write-Host ""}
		'67' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$67`"!"; Write-Host ""}
		'68' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$68`"!"; Write-Host ""}
		'69' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$69`"!"; Write-Host ""}
		'70' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$70`"!"; Write-Host ""}
		'71' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$71`"!"; Write-Host ""}
		'72' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$72`"!"; Write-Host ""}
		'73' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$73`"!"; Write-Host ""}
		'74' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$74`"!"; Write-Host ""}
		'75' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$75`"!"; Write-Host ""}
		'76' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$76`"!"; Write-Host ""}
		'77' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$77`"!"; Write-Host ""}
		'78' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$78`"!"; Write-Host ""}
		'79' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$79`"!"; Write-Host ""}
		'80' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$80`"!"; Write-Host ""}
		'81' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$81`"!"; Write-Host ""}
		'82' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$82`"!"; Write-Host ""}
		'83' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$83`"!"; Write-Host ""}
		'84' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$84`"!"; Write-Host ""}
		'85' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$85`"!"; Write-Host ""}
		'86' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$86`"!"; Write-Host ""}
		'87' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$87`"!"; Write-Host ""}
		'88' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$88`"!"; Write-Host ""}
		'89' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$89`"!"; Write-Host ""}
		'90' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$90`"!"; Write-Host ""}
		'91' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$91`"!"; Write-Host ""}
		'92' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$92`"!"; Write-Host ""}
		'93' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$93`"!"; Write-Host ""}
		'94' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$94`"!"; Write-Host ""}
		'95' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$95`"!"; Write-Host ""}
		'96' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$96`"!"; Write-Host ""}
		'97' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$97`"!"; Write-Host ""}
		'98' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$98`"!"; Write-Host ""}
		'99' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$99`"!"; Write-Host ""}
		'100' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$100`"!"; Write-Host ""}
		'101' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$101`"!"; Write-Host ""}
		'102' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$102`"!"; Write-Host ""}
		'103' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$103`"!"; Write-Host ""}
		'104' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$104`"!"; Write-Host ""}
		'105' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$105`"!"; Write-Host ""}
		'106' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$106`"!"; Write-Host ""}
		'107' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$107`"!"; Write-Host ""}
		'108' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$108`"!"; Write-Host ""}
		'109' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$109`"!"; Write-Host ""}
		'110' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$110`"!"; Write-Host ""}
		'111' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$111`"!"; Write-Host ""}
		'112' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$112`"!"; Write-Host ""}
		'113' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$113`"!"; Write-Host ""}
		'114' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$114`"!"; Write-Host ""}
		'115' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$115`"!"; Write-Host ""}
		'116' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$116`"!"; Write-Host ""}
		'117' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$117`"!"; Write-Host ""}
		'118' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$118`"!"; Write-Host ""}
		'119' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$119`"!"; Write-Host ""}
		'120' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$120`"!"; Write-Host ""}
		'121' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$121`"!"; Write-Host ""}
		'122' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$122`"!"; Write-Host ""}
		'123' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$123`"!"; Write-Host ""}
		'124' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$124`"!"; Write-Host ""}
		'125' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$125`"!"; Write-Host ""}
		'126' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$126`"!"; Write-Host ""}
		'127' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$127`"!"; Write-Host ""}
		'128' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$128`"!"; Write-Host ""}
		'129' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$129`"!"; Write-Host ""}
		'130' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$130`"!"; Write-Host ""}
		'131' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$131`"!"; Write-Host ""}
		'132' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$132`"!"; Write-Host ""}
		'133' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$133`"!"; Write-Host ""}
		'134' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$134`"!"; Write-Host ""}
		'135' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$135`"!"; Write-Host ""}
		'136' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$136`"!"; Write-Host ""}
		'137' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$137`"!"; Write-Host ""}
		'138' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$138`"!"; Write-Host ""}
		'139' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$139`"!"; Write-Host ""}
		'140' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$140`"!"; Write-Host ""}
		'141' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$141`"!"; Write-Host ""}
		'142' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$142`"!"; Write-Host ""}
		'143' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$143`"!"; Write-Host ""}
		'144' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$144`"!"; Write-Host ""}
		'145' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$145`"!"; Write-Host ""}
		'146' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$146`"!"; Write-Host ""}
		'147' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$147`"!"; Write-Host ""}
		'148' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$148`"!"; Write-Host ""}
		'149' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$149`"!"; Write-Host ""}
		'150' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$150`"!"; Write-Host ""}
		'151' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$151`"!"; Write-Host ""}
		'152' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$152`"!"; Write-Host ""}
		'153' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$153`"!"; Write-Host ""}
		'154' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$154`"!"; Write-Host ""}
		'155' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$155`"!"; Write-Host ""}
		'156' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$156`"!"; Write-Host ""}
		'157' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$157`"!"; Write-Host ""}
		'158' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$158`"!"; Write-Host ""}
		'159' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$159`"!"; Write-Host ""}
		'160' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$160`"!"; Write-Host ""}
		'161' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$161`"!"; Write-Host ""}
		'162' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$162`"!"; Write-Host ""}
		'163' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$163`"!"; Write-Host ""}
		'164' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$164`"!"; Write-Host ""}
		'165' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$165`"!"; Write-Host ""}
		'166' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$166`"!"; Write-Host ""}
		'167' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$167`"!"; Write-Host ""}
		'168' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$168`"!"; Write-Host ""}
		'169' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$169`"!"; Write-Host ""}
		'170' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$170`"!"; Write-Host ""}
		'171' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$171`"!"; Write-Host ""}
		'172' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$172`"!"; Write-Host ""}
		'173' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$173`"!"; Write-Host ""}
		'174' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$174`"!"; Write-Host ""}
		'175' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$175`"!"; Write-Host ""}
		'176' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$176`"!"; Write-Host ""}
		'177' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$177`"!"; Write-Host ""}
		'178' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$178`"!"; Write-Host ""}
		'179' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$179`"!"; Write-Host ""}
		'180' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$180`"!"; Write-Host ""}
		'181' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$181`"!"; Write-Host ""}
		'182' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$182`"!"; Write-Host ""}
		'183' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$183`"!"; Write-Host ""}
		'184' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$184`"!"; Write-Host ""}
		'185' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$185`"!"; Write-Host ""}
		'186' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$186`"!"; Write-Host ""}
		'187' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$187`"!"; Write-Host ""}
		'188' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$188`"!"; Write-Host ""}
		'189' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$189`"!"; Write-Host ""}
		'190' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$190`"!"; Write-Host ""}
		'191' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$191`"!"; Write-Host ""}
		'192' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$192`"!"; Write-Host ""}
		'193' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$193`"!"; Write-Host ""}
		'194' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$194`"!"; Write-Host ""}
		'195' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$195`"!"; Write-Host ""}
		'196' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$196`"!"; Write-Host ""}
		'197' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$197`"!"; Write-Host ""}
		'198' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$198`"!"; Write-Host ""}
		'199' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$199`"!"; Write-Host ""}
		'200' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$200`"!"; Write-Host ""}
		'201' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$201`"!"; Write-Host ""}
		'202' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$202`"!"; Write-Host ""}
		'203' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$203`"!"; Write-Host ""}
		'204' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$204`"!"; Write-Host ""}
		'205' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$205`"!"; Write-Host ""}
		'206' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$206`"!"; Write-Host ""}
		'207' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$207`"!"; Write-Host ""}
		'208' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$208`"!"; Write-Host ""}
		'209' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$209`"!"; Write-Host ""}
		'210' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$210`"!"; Write-Host ""}
		'211' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$211`"!"; Write-Host ""}
		'212' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$212`"!"; Write-Host ""}
		'213' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$213`"!"; Write-Host ""}
		'214' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$214`"!"; Write-Host ""}
		'215' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$215`"!"; Write-Host ""}
		'216' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$216`"!"; Write-Host ""}
		'217' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$217`"!"; Write-Host ""}
		'218' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$218`"!"; Write-Host ""}
		'219' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$219`"!"; Write-Host ""}
		'220' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$220`"!"; Write-Host ""}
		'221' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$221`"!"; Write-Host ""}
		'222' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$222`"!"; Write-Host ""}
		'223' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$223`"!"; Write-Host ""}
		'224' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$224`"!"; Write-Host ""}
		'225' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$225`"!"; Write-Host ""}
		'226' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$226`"!"; Write-Host ""}
		'227' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$227`"!"; Write-Host ""}
		'228' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$228`"!"; Write-Host ""}
		'229' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$229`"!"; Write-Host ""}
		'230' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$230`"!"; Write-Host ""}
		'231' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$231`"!"; Write-Host ""}
		'232' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$232`"!"; Write-Host ""}
		'233' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$233`"!"; Write-Host ""}
		'234' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$234`"!"; Write-Host ""}
		'235' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$235`"!"; Write-Host ""}
		'236' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$236`"!"; Write-Host ""}
		'237' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$237`"!"; Write-Host ""}
		'238' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$238`"!"; Write-Host ""}
		'239' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$239`"!"; Write-Host ""}
		'240' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$240`"!"; Write-Host ""}
		'241' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$241`"!"; Write-Host ""}
		'242' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$242`"!"; Write-Host ""}
		'243' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$243`"!"; Write-Host ""}
		'244' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$244`"!"; Write-Host ""}
		'245' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$245`"!"; Write-Host ""}
		'246' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$246`"!"; Write-Host ""}
		'247' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$247`"!"; Write-Host ""}
		'248' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$248`"!"; Write-Host ""}
		'249' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$249`"!"; Write-Host ""}
		'250' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$250`"!"; Write-Host ""}
		'251' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$251`"!"; Write-Host ""}
		'252' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$252`"!"; Write-Host ""}
		'253' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$253`"!"; Write-Host ""}
		'254' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$254`"!"; Write-Host ""}
		'255' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$255`"!"; Write-Host ""}
		'256' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$256`"!"; Write-Host ""}
		'257' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$257`"!"; Write-Host ""}
		'258' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$258`"!"; Write-Host ""}
		'259' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$259`"!"; Write-Host ""}
		'260' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$260`"!"; Write-Host ""}
		'261' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$261`"!"; Write-Host ""}
		'262' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$262`"!"; Write-Host ""}
		'263' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$263`"!"; Write-Host ""}
		'264' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$264`"!"; Write-Host ""}
		'265' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$265`"!"; Write-Host ""}
		'266' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$266`"!"; Write-Host ""}
		'267' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$267`"!"; Write-Host ""}
		'268' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$268`"!"; Write-Host ""}
		'269' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$269`"!"; Write-Host ""}
		'270' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$270`"!"; Write-Host ""}
		'271' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$271`"!"; Write-Host ""}
		'272' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$272`"!"; Write-Host ""}
		'273' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$273`"!"; Write-Host ""}
		'274' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$274`"!"; Write-Host ""}
		'275' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$275`"!"; Write-Host ""}
		'276' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$276`"!"; Write-Host ""}
		'277' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$277`"!"; Write-Host ""}
		'278' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$278`"!"; Write-Host ""}
		'279' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$279`"!"; Write-Host ""}
		'280' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$280`"!"; Write-Host ""}
		'281' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$281`"!"; Write-Host ""}
		'282' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$282`"!"; Write-Host ""}
		'283' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$283`"!"; Write-Host ""}
		'284' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$284`"!"; Write-Host ""}
		'285' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$285`"!"; Write-Host ""}
		'286' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$286`"!"; Write-Host ""}
		'287' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$287`"!"; Write-Host ""}
		'288' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$288`"!"; Write-Host ""}
		'289' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$289`"!"; Write-Host ""}
		'290' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$290`"!"; Write-Host ""}
		'291' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$291`"!"; Write-Host ""}
		'292' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$292`"!"; Write-Host ""}
		'293' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$293`"!"; Write-Host ""}
		'294' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$294`"!"; Write-Host ""}
		'295' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$295`"!"; Write-Host ""}
		'296' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$296`"!"; Write-Host ""}
		'297' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$297`"!"; Write-Host ""}
		'298' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$298`"!"; Write-Host ""}
		'299' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$299`"!"; Write-Host ""}
		'300' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$300`"!"; Write-Host ""}
		'301' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$301`"!"; Write-Host ""}
		'302' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$302`"!"; Write-Host ""}
		'303' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$303`"!"; Write-Host ""}
		'304' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$304`"!"; Write-Host ""}
		'305' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$305`"!"; Write-Host ""}
		'306' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$306`"!"; Write-Host ""}
		'307' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$307`"!"; Write-Host ""}
		'308' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$308`"!"; Write-Host ""}
		'309' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$309`"!"; Write-Host ""}
		'310' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$310`"!"; Write-Host ""}
		'311' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$311`"!"; Write-Host ""}
		'312' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$312`"!"; Write-Host ""}
		'313' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$313`"!"; Write-Host ""}
		'314' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$314`"!"; Write-Host ""}
		'315' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$315`"!"; Write-Host ""}
		'316' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$316`"!"; Write-Host ""}
		'317' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$317`"!"; Write-Host ""}
		'318' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$318`"!"; Write-Host ""}
		'319' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$319`"!"; Write-Host ""}
		'320' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$320`"!"; Write-Host ""}
		'321' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$321`"!"; Write-Host ""}
		'322' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$322`"!"; Write-Host ""}
		'323' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$323`"!"; Write-Host ""}
		'324' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$324`"!"; Write-Host ""}
		'325' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$325`"!"; Write-Host ""}
		'326' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$326`"!"; Write-Host ""}
		'327' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$327`"!"; Write-Host ""}
		'328' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$328`"!"; Write-Host ""}
		'329' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$329`"!"; Write-Host ""}
		'330' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$330`"!"; Write-Host ""}
		'331' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$331`"!"; Write-Host ""}
		'332' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$332`"!"; Write-Host ""}
		'333' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$333`"!"; Write-Host ""}
		'334' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$334`"!"; Write-Host ""}
		'335' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$335`"!"; Write-Host ""}
		'336' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$336`"!"; Write-Host ""}
		'337' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$337`"!"; Write-Host ""}
		'338' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$338`"!"; Write-Host ""}
		'339' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$339`"!"; Write-Host ""}
		'340' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$340`"!"; Write-Host ""}
		'341' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$341`"!"; Write-Host ""}
		'342' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$342`"!"; Write-Host ""}
		'343' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$343`"!"; Write-Host ""}
		'344' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$344`"!"; Write-Host ""}
		'345' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$345`"!"; Write-Host ""}
		'346' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$346`"!"; Write-Host ""}
		'347' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$347`"!"; Write-Host ""}
		'348' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$348`"!"; Write-Host ""}
		'349' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$349`"!"; Write-Host ""}
		'350' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$350`"!"; Write-Host ""}
		'351' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$351`"!"; Write-Host ""}
		'352' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$352`"!"; Write-Host ""}
		'353' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$353`"!"; Write-Host ""}
		'354' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$354`"!"; Write-Host ""}
		'355' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$355`"!"; Write-Host ""}
		'356' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$356`"!"; Write-Host ""}
		'357' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$357`"!"; Write-Host ""}
		'358' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$358`"!"; Write-Host ""}
		'359' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$359`"!"; Write-Host ""}
		'360' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$360`"!"; Write-Host ""}
		'361' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$361`"!"; Write-Host ""}
		'362' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$362`"!"; Write-Host ""}
		'363' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$363`"!"; Write-Host ""}
		'364' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$364`"!"; Write-Host ""}
		'365' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$365`"!"; Write-Host ""}
		'366' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$366`"!"; Write-Host ""}
		'367' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$367`"!"; Write-Host ""}
		'368' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$368`"!"; Write-Host ""}
		'369' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$369`"!"; Write-Host ""}
		'370' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$370`"!"; Write-Host ""}
		'371' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$371`"!"; Write-Host ""}
		'372' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$372`"!"; Write-Host ""}
		'373' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$373`"!"; Write-Host ""}
		'374' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$374`"!"; Write-Host ""}
		'375' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$375`"!"; Write-Host ""}
		'376' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$376`"!"; Write-Host ""}
		'377' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$377`"!"; Write-Host ""}
		'378' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$378`"!"; Write-Host ""}
		'379' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$379`"!"; Write-Host ""}
		'380' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$380`"!"; Write-Host ""}
		'381' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$381`"!"; Write-Host ""}
		'382' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$382`"!"; Write-Host ""}
		'383' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$383`"!"; Write-Host ""}
		'384' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$384`"!"; Write-Host ""}
		'385' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$385`"!"; Write-Host ""}
		'386' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$386`"!"; Write-Host ""}
		'387' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$387`"!"; Write-Host ""}
		'388' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$388`"!"; Write-Host ""}
		'389' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$389`"!"; Write-Host ""}
		'390' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$390`"!"; Write-Host ""}
		'391' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$391`"!"; Write-Host ""}
		'392' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$392`"!"; Write-Host ""}
		'393' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$393`"!"; Write-Host ""}
		'394' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$394`"!"; Write-Host ""}
		'395' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$395`"!"; Write-Host ""}
		'396' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$396`"!"; Write-Host ""}
		'397' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$397`"!"; Write-Host ""}
		'398' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$398`"!"; Write-Host ""}
		'399' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$399`"!"; Write-Host ""}
		'400' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$400`"!"; Write-Host ""}
		'401' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$401`"!"; Write-Host ""}
		'402' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$402`"!"; Write-Host ""}
		'403' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$403`"!"; Write-Host ""}
		'404' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$404`"!"; Write-Host ""}
		'405' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$405`"!"; Write-Host ""}
		'406' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$406`"!"; Write-Host ""}
		'407' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$407`"!"; Write-Host ""}
		'408' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$408`"!"; Write-Host ""}
		'409' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$409`"!"; Write-Host ""}
		'410' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$410`"!"; Write-Host ""}
		'411' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$411`"!"; Write-Host ""}
		'412' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$412`"!"; Write-Host ""}
		'413' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$413`"!"; Write-Host ""}
		'414' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$414`"!"; Write-Host ""}
		'415' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$415`"!"; Write-Host ""}
		'416' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$416`"!"; Write-Host ""}
		'417' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$417`"!"; Write-Host ""}
		'418' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$418`"!"; Write-Host ""}
		'419' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$419`"!"; Write-Host ""}
		'420' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$420`"!"; Write-Host ""}
		'421' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$421`"!"; Write-Host ""}
		'422' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$422`"!"; Write-Host ""}
		'423' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$423`"!"; Write-Host ""}
		'424' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$424`"!"; Write-Host ""}
		'425' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$425`"!"; Write-Host ""}
		'426' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$426`"!"; Write-Host ""}
		'427' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$427`"!"; Write-Host ""}
		'428' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$428`"!"; Write-Host ""}
		'429' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$429`"!"; Write-Host ""}
		'430' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$430`"!"; Write-Host ""}
		'431' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$431`"!"; Write-Host ""}
		'432' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$432`"!"; Write-Host ""}
		'433' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$433`"!"; Write-Host ""}
		'434' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$434`"!"; Write-Host ""}
		'435' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$435`"!"; Write-Host ""}
		'436' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$436`"!"; Write-Host ""}
		'437' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$437`"!"; Write-Host ""}
		'438' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$438`"!"; Write-Host ""}
		'439' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$439`"!"; Write-Host ""}
		'440' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$440`"!"; Write-Host ""}
		'441' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$441`"!"; Write-Host ""}
		'442' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$442`"!"; Write-Host ""}
		'443' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$443`"!"; Write-Host ""}
		'444' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$444`"!"; Write-Host ""}
		'445' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$445`"!"; Write-Host ""}
		'446' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$446`"!"; Write-Host ""}
		'447' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$447`"!"; Write-Host ""}
		'448' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$448`"!"; Write-Host ""}
		'449' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$449`"!"; Write-Host ""}
		'450' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$450`"!"; Write-Host ""}
		'451' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$451`"!"; Write-Host ""}
		'452' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$452`"!"; Write-Host ""}
		'453' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$453`"!"; Write-Host ""}
		'454' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$454`"!"; Write-Host ""}
		'455' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$455`"!"; Write-Host ""}
		'456' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$456`"!"; Write-Host ""}
		'457' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$457`"!"; Write-Host ""}
		'458' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$458`"!"; Write-Host ""}
		'459' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$459`"!"; Write-Host ""}
		'460' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$460`"!"; Write-Host ""}
		'461' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$461`"!"; Write-Host ""}
		'462' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$462`"!"; Write-Host ""}
		'463' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$463`"!"; Write-Host ""}
		'464' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$464`"!"; Write-Host ""}
		'465' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$465`"!"; Write-Host ""}
		'466' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$466`"!"; Write-Host ""}
		'467' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$467`"!"; Write-Host ""}
		'468' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$468`"!"; Write-Host ""}
		'469' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$469`"!"; Write-Host ""}
		'470' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$470`"!"; Write-Host ""}
		'471' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$471`"!"; Write-Host ""}
		'472' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$472`"!"; Write-Host ""}
		'473' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$473`"!"; Write-Host ""}
		'474' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$474`"!"; Write-Host ""}
		'475' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$475`"!"; Write-Host ""}
		'476' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$476`"!"; Write-Host ""}
		'477' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$477`"!"; Write-Host ""}
		'478' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$478`"!"; Write-Host ""}
		'479' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$479`"!"; Write-Host ""}
		'480' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$480`"!"; Write-Host ""}
		'481' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$481`"!"; Write-Host ""}
		'482' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$482`"!"; Write-Host ""}
		'483' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$483`"!"; Write-Host ""}
		'484' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$484`"!"; Write-Host ""}
		'485' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$485`"!"; Write-Host ""}
		'486' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$486`"!"; Write-Host ""}
		'487' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$487`"!"; Write-Host ""}
		'488' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$488`"!"; Write-Host ""}
		'489' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$489`"!"; Write-Host ""}
		'490' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$490`"!"; Write-Host ""}
		'491' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$491`"!"; Write-Host ""}
		'492' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$492`"!"; Write-Host ""}
		'493' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$493`"!"; Write-Host ""}
		'494' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$494`"!"; Write-Host ""}
		'495' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$495`"!"; Write-Host ""}
		'496' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$496`"!"; Write-Host ""}
		'497' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$497`"!"; Write-Host ""}
		'498' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$498`"!"; Write-Host ""}
		'499' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$499`"!"; Write-Host ""}
		'500' {Clear-Host; Write-Host "╔══════════════════════════════════════╗"; Write-Host "║         Wordle Solution Tool         ║"; Write-Host "╚══════════════════════════════════════╝"; Write-Host ""; Write-Host "The answer for your puzzle is `"$500`"!"; Write-Host ""}
		            }
            pause
        }
    until ($End_User_Choice -eq 'q')

$1 = "rebut"
$2 = "sissy"
$3 = "humph"
$4 = "awake"
$5 = "blush"
$6 = "focal"
$7 = "evade"
$8 = "naval"
$9 = "serve"
$10 = "heath"
$11 = "dwarf"
$12 = "model"
$13 = "karma"
$14 = "stink"
$15 = "grade"
$16 = "quiet"
$17 = "bench"
$18 = "abate"
$19 = "feign"
$20 = "major"
$21 = "death"
$22 = "fresh"
$23 = "crust"
$24 = "stool"
$25 = "colon"
$26 = "abase"
$27 = "marry"
$28 = "react"
$29 = "batty"
$30 = "pride"
$31 = "floss"
$32 = "helix"
$33 = "croak"
$34 = "staff"
$35 = "paper"
$36 = "unfed"
$37 = "whelp"
$38 = "trawl"
$39 = "outdo"
$40 = "adobe"
$41 = "crazy"
$42 = "sower"
$43 = "repay"
$44 = "digit"
$45 = "crate"
$46 = "cluck"
$47 = "spike"
$48 = "mimic"
$49 = "pound"
$50 = "maxim"
$51 = "linen"
$52 = "unmet"
$53 = "flesh"
$54 = "booby"
$55 = "forth"
$56 = "first"
$57 = "stand"
$58 = "belly"
$59 = "ivory"
$60 = "seedy"
$61 = "print"
$62 = "yearn"
$63 = "drain"
$64 = "bribe"
$65 = "stout"
$66 = "panel"
$67 = "crass"
$68 = "flume"
$69 = "offal"
$70 = "agree"
$71 = "error"
$72 = "swirl"
$73 = "argue"
$74 = "bleed"
$75 = "delta"
$76 = "flick"
$77 = "totem"
$78 = "wooer"
$79 = "front"
$80 = "shrub"
$81 = "parry"
$82 = "biome"
$83 = "lapel"
$84 = "start"
$85 = "greet"
$86 = "goner"
$87 = "golem"
$88 = "lusty"
$89 = "loopy"
$90 = "round"
$91 = "audit"
$92 = "lying"
$93 = "gamma"
$94 = "labor"
$95 = "islet"
$96 = "civic"
$97 = "forge"
$98 = "corny"
$99 = "moult"
$100 = "basic"
$101 = "salad"
$102 = "agate"
$103 = "spicy"
$104 = "spray"
$105 = "essay"
$106 = "fjord"
$107 = "spend"
$108 = "kebab"
$109 = "guild"
$110 = "aback"
$111 = "motor"
$112 = "alone"
$113 = "hatch"
$114 = "hyper"
$115 = "thumb"
$116 = "dowry"
$117 = "ought"
$118 = "belch"
$119 = "dutch"
$120 = "pilot"
$121 = "tweed"
$122 = "comet"
$123 = "jaunt"
$124 = "enema"
$125 = "steed"
$126 = "abyss"
$127 = "growl"
$128 = "fling"
$129 = "dozen"
$130 = "boozy"
$131 = "erode"
$132 = "world"
$133 = "gouge"
$134 = "click"
$135 = "briar"
$136 = "great"
$137 = "altar"
$138 = "pulpy"
$139 = "blurt"
$140 = "coast"
$141 = "duchy"
$142 = "groin"
$143 = "fixer"
$144 = "group"
$145 = "rogue"
$146 = "badly"
$147 = "smart"
$148 = "pithy"
$149 = "gaudy"
$150 = "chill"
$151 = "heron"
$152 = "vodka"
$153 = "finer"
$154 = "surer"
$155 = "radio"
$156 = "rouge"
$157 = "perch"
$158 = "retch"
$159 = "wrote"
$160 = "clock"
$161 = "tilde"
$162 = "store"
$163 = "prove"
$164 = "bring"
$165 = "solve"
$166 = "cheat"
$167 = "grime"
$168 = "exult"
$169 = "usher"
$170 = "epoch"
$171 = "triad"
$172 = "break"
$173 = "rhino"
$174 = "viral"
$175 = "conic"
$176 = "masse"
$177 = "sonic"
$178 = "vital"
$179 = "trace"
$180 = "using"
$181 = "peach"
$182 = "champ"
$183 = "baton"
$184 = "brake"
$185 = "pluck"
$186 = "craze"
$187 = "gripe"
$188 = "weary"
$189 = "picky"
$190 = "acute"
$191 = "ferry"
$192 = "aside"
$193 = "tapir"
$194 = "troll"
$195 = "unify"
$196 = "rebus"
$197 = "boost"
$198 = "truss"
$199 = "siege"
$200 = "tiger"
$201 = "banal"
$202 = "slump"
$203 = "crank"
$204 = "gorge"
$205 = "query"
$206 = "drink"
$207 = "favor"
$208 = "abbey"
$209 = "tangy"
$210 = "panic"
$211 = "solar"
$212 = "shire"
$213 = "proxy"
$214 = "point"
$215 = "robot"
$216 = "prick"
$217 = "wince"
$218 = "crimp"
$219 = "knoll"
$220 = "sugar"
$221 = "whack"
$222 = "mount"
$223 = "perky"
$224 = "could"
$225 = "wrung"
$226 = "light"
$227 = "those"
$228 = "moist"
$229 = "shard"
$230 = "pleat"
$231 = "aloft"
$232 = "skill"
$233 = "elder"
$234 = "frame"
$235 = "humor"
$236 = "pause"
$237 = "ulcer"
$238 = "ultra"
$239 = "robin"
$240 = "cynic"
$241 = "agora"
$242 = "aroma"
$243 = "caulk"
$244 = "shake"
$245 = "pupal"
$246 = "dodge"
$247 = "swill"
$248 = "tacit"
$249 = "other"
$250 = "thorn"
$251 = "trove"
$252 = "bloke"
$253 = "vivid"
$254 = "spill"
$255 = "chant"
$256 = "choke"
$257 = "rupee"
$258 = "nasty"
$259 = "mourn"
$260 = "ahead"
$261 = "brine"
$262 = "cloth"
$263 = "hoard"
$264 = "sweet"
$265 = "month"
$266 = "lapse"
$267 = "watch"
$268 = "today"
$269 = "focus"
$270 = "smelt"
$271 = "tease"
$272 = "cater"
$273 = "movie"
$274 = "lynch"
$275 = "saute"
$276 = "allow"
$277 = "renew"
$278 = "their"
$279 = "slosh"
$280 = "purge"
$281 = "chest"
$282 = "depot"
$283 = "epoxy"
$284 = "nymph"
$285 = "found"
$286 = "shall"
$287 = "harry"
$288 = "stove"
$289 = "lowly"
$290 = "snout"
$291 = "trope"
$292 = "fewer"
$293 = "shawl"
$294 = "natal"
$295 = "fibre"
$296 = "comma"
$297 = "foray"
$298 = "scare"
$299 = "stair"
$300 = "black"
$301 = "squad"
$302 = "royal"
$303 = "chunk"
$304 = "mince"
$305 = "slave"
$306 = "shame"
$307 = "cheek"
$308 = "ample"
$309 = "flair"
$310 = "foyer"
$311 = "cargo"
$312 = "oxide"
$313 = "plant"
$314 = "olive"
$315 = "inert"
$316 = "askew"
$317 = "heist"
$318 = "shown"
$319 = "zesty"
$320 = "hasty"
$321 = "trash"
$322 = "fella"
$323 = "larva"
$324 = "forgo"
$325 = "story"
$326 = "hairy"
$327 = "train"
$328 = "homer"
$329 = "badge"
$330 = "midst"
$331 = "canny"
$332 = "fetus"
$333 = "butch"
$334 = "farce"
$335 = "slung"
$336 = "tipsy"
$337 = "metal"
$338 = "yield"
$339 = "delve"
$340 = "being"
$341 = "scour"
$342 = "glass"
$343 = "gamer"
$344 = "scrap"
$345 = "money"
$346 = "hinge"
$347 = "album"
$348 = "vouch"
$349 = "asset"
$350 = "tiara"
$351 = "crept"
$352 = "bayou"
$353 = "atoll"
$354 = "manor"
$355 = "creak"
$356 = "showy"
$357 = "phase"
$358 = "froth"
$359 = "depth"
$360 = "gloom"
$361 = "flood"
$362 = "trait"
$363 = "girth"
$364 = "piety"
$365 = "payer"
$366 = "goose"
$367 = "float"
$368 = "donor"
$369 = "atone"
$370 = "primo"
$371 = "apron"
$372 = "blown"
$373 = "cacao"
$374 = "loser"
$375 = "input"
$376 = "gloat"
$377 = "awful"
$378 = "brink"
$379 = "smite"
$380 = "beady"
$381 = "rusty"
$382 = "retro"
$383 = "droll"
$384 = "gawky"
$385 = "hutch"
$386 = "pinto"
$387 = "gaily"
$388 = "egret"
$389 = "lilac"
$390 = "sever"
$391 = "field"
$392 = "fluff"
$393 = "hydro"
$394 = "flack"
$395 = "agape"
$396 = "wench"
$397 = "voice"
$398 = "stead"
$399 = "stalk"
$400 = "berth"
$401 = "madam"
$402 = "night"
$403 = "bland"
$404 = "liver"
$405 = "wedge"
$406 = "augur"
$407 = "roomy"
$408 = "wacky"
$409 = "flock"
$410 = "angry"
$411 = "bobby"
$412 = "trite"
$413 = "aphid"
$414 = "tryst"
$415 = "midge"
$416 = "power"
$417 = "elope"
$418 = "cinch"
$419 = "motto"
$420 = "stomp"
$421 = "upset"
$422 = "bluff"
$423 = "cramp"
$424 = "quart"
$425 = "coyly"
$426 = "youth"
$427 = "rhyme"
$428 = "buggy"
$429 = "alien"
$430 = "smear"
$431 = "unfit"
$432 = "patty"
$433 = "cling"
$434 = "glean"
$435 = "label"
$436 = "hunky"
$437 = "khaki"
$438 = "poker"
$439 = "gruel"
$440 = "twice"
$441 = "twang"
$442 = "shrug"
$443 = "treat"
$444 = "unlit"
$445 = "waste"
$446 = "merit"
$447 = "woven"
$448 = "octal"
$449 = "needy"
$450 = "clown"
$451 = "widow"
$452 = "irony"
$453 = "ruder"
$454 = "gauze"
$455 = "chief"
$456 = "onset"
$457 = "prize"
$458 = "fungi"
$459 = "charm"
$460 = "gully"
$461 = "inter"
$462 = "whoop"
$463 = "taunt"
$464 = "leery"
$465 = "class"
$466 = "theme"
$467 = "lofty"
$468 = "tibia"
$469 = "booze"
$470 = "alpha"
$471 = "thyme"
$472 = "eclat"
$473 = "doubt"
$474 = "parer"
$475 = "chute"
$476 = "stick"
$477 = "trice"
$478 = "alike"
$479 = "sooth"
$480 = "recap"
$481 = "saint"
$482 = "liege"
$483 = "glory"
$484 = "grate"
$485 = "admit"
$486 = "brisk"
$487 = "soggy"
$488 = "usurp"
$489 = "scald"
$490 = "scorn"
$491 = "leave"
$492 = "twine"
$493 = "sting"
$494 = "bough"
$495 = "marsh"
$496 = "sloth"
$497 = "dandy"
$498 = "vigor"
$499 = "howdy"
$500 = "enjoy"
