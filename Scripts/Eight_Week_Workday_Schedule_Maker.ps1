Clear-Host

Clear-Variable Day*
Clear-Variable FileName

Write-Host "╔══════════════════════════════════════╗"
Write-Host "║  Eight Week Workday Schedule Maker   ║"
Write-Host "║                                      ║"
Write-Host "║ Note: Does not account for holidays. ║"
Write-Host "╚══════════════════════════════════════╝"
Write-Host ""
$FileName = Read-Host "Enter a file name"
$CSV = "$ENV:HOMEDRIVE" + "$ENV:HOMEPATH" + "\" + "Desktop\" + "$FileName" + ".csv"
Write-Host ""
Write-Host "Format: mm/dd/yyyy"
Write-Host ""

$StartDate = Read-Host "Enter the start date"

########## Day 01 ##########

$Day01 = Get-Date $StartDate
$Day01Day = ($Day01).DayOfWeek
$Day01Format = Get-Date $Day01 -Format "ddMMMyyyy"
$Day01Output = "(" + "$Day01Day" + ") " + "$Day01Format"

########## Day 02 ##########

$Day02 = (Get-Date $Day01).AddDays(1)

if ($Day02.DayOfWeek -eq "Sunday") {
    $Day02 = (Get-Date $Day01).AddDays(2)
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Day = ($Day02).DayOfWeek
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Monday") {
    $Day02 = (Get-Date $Day01).AddDays(1)
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Day = ($Day02).DayOfWeek
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Tuesday") {
    $Day02 = (Get-Date $Day01).AddDays(1)
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Day = ($Day02).DayOfWeek
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Wednesday") {
    $Day02 = (Get-Date $Day01).AddDays(1)
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Day = ($Day02).DayOfWeek
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Thursday") {
    $Day02 = (Get-Date $Day01).AddDays(1)
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Day = ($Day02).DayOfWeek
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Friday") {
    $Day02 = (Get-Date $Day01).AddDays(1)
    $Day02Day = ($Day02).DayOfWeek
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}
elseif ($Day02.DayOfWeek -eq "Saturday") {
    $Day02 = (Get-Date $Day01).AddDays(3)
    $Day02Day = ($Day02).DayOfWeek
    $Day02Format = Get-Date $Day02 -Format "ddMMMyyyy"
    $Day02Output = "(" + "$Day02Day" + ") " + "$Day02Format"
}

########## Day 03 ##########

$Day03 = (Get-Date $Day02).AddDays(1)

if ($Day03.DayOfWeek -eq "Sunday") {
    $Day03 = (Get-Date $Day02).AddDays(2)
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Day = ($Day03).DayOfWeek
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Monday") {
    $Day03 = (Get-Date $Day02).AddDays(1)
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Day = ($Day03).DayOfWeek
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Tuesday") {
    $Day03 = (Get-Date $Day02).AddDays(1)
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Day = ($Day03).DayOfWeek
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Wednesday") {
    $Day03 = (Get-Date $Day02).AddDays(1)
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Day = ($Day03).DayOfWeek
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Thursday") {
    $Day03 = (Get-Date $Day02).AddDays(1)
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Day = ($Day03).DayOfWeek
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Friday") {
    $Day03 = (Get-Date $Day02).AddDays(1)
    $Day03Day = ($Day03).DayOfWeek
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}
elseif ($Day03.DayOfWeek -eq "Saturday") {
    $Day03 = (Get-Date $Day02).AddDays(3)
    $Day03Day = ($Day03).DayOfWeek
    $Day03Format = Get-Date $Day03 -Format "ddMMMyyyy"
    $Day03Output = "(" + "$Day03Day" + ") " + "$Day03Format"
}

########## Day 04 ##########

$Day04 = (Get-Date $Day03).AddDays(1)

if ($Day04.DayOfWeek -eq "Sunday") {
    $Day04 = (Get-Date $Day03).AddDays(2)
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Day = ($Day04).DayOfWeek
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Monday") {
    $Day04 = (Get-Date $Day03).AddDays(1)
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Day = ($Day04).DayOfWeek
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Tuesday") {
    $Day04 = (Get-Date $Day03).AddDays(1)
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Day = ($Day04).DayOfWeek
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Wednesday") {
    $Day04 = (Get-Date $Day03).AddDays(1)
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Day = ($Day04).DayOfWeek
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Thursday") {
    $Day04 = (Get-Date $Day03).AddDays(1)
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Day = ($Day04).DayOfWeek
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Friday") {
    $Day04 = (Get-Date $Day03).AddDays(1)
    $Day04Day = ($Day04).DayOfWeek
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}
elseif ($Day04.DayOfWeek -eq "Saturday") {
    $Day04 = (Get-Date $Day03).AddDays(3)
    $Day04Day = ($Day04).DayOfWeek
    $Day04Format = Get-Date $Day04 -Format "ddMMMyyyy"
    $Day04Output = "(" + "$Day04Day" + ") " + "$Day04Format"
}

########## Day 05 ##########

$Day05 = (Get-Date $Day04).AddDays(1)

if ($Day05.DayOfWeek -eq "Sunday") {
    $Day05 = (Get-Date $Day04).AddDays(2)
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Day = ($Day05).DayOfWeek
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Monday") {
    $Day05 = (Get-Date $Day04).AddDays(1)
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Day = ($Day05).DayOfWeek
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Tuesday") {
    $Day05 = (Get-Date $Day04).AddDays(1)
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Day = ($Day05).DayOfWeek
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Wednesday") {
    $Day05 = (Get-Date $Day04).AddDays(1)
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Day = ($Day05).DayOfWeek
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Thursday") {
    $Day05 = (Get-Date $Day04).AddDays(1)
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Day = ($Day05).DayOfWeek
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Friday") {
    $Day05 = (Get-Date $Day04).AddDays(1)
    $Day05Day = ($Day05).DayOfWeek
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}
elseif ($Day05.DayOfWeek -eq "Saturday") {
    $Day05 = (Get-Date $Day04).AddDays(3)
    $Day05Day = ($Day05).DayOfWeek
    $Day05Format = Get-Date $Day05 -Format "ddMMMyyyy"
    $Day05Output = "(" + "$Day05Day" + ") " + "$Day05Format"
}

########## Day 06 ##########

$Day06 = (Get-Date $Day05).AddDays(1)

if ($Day06.DayOfWeek -eq "Sunday") {
    $Day06 = (Get-Date $Day05).AddDays(2)
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Day = ($Day06).DayOfWeek
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Monday") {
    $Day06 = (Get-Date $Day05).AddDays(1)
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Day = ($Day06).DayOfWeek
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Tuesday") {
    $Day06 = (Get-Date $Day05).AddDays(1)
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Day = ($Day06).DayOfWeek
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Wednesday") {
    $Day06 = (Get-Date $Day05).AddDays(1)
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Day = ($Day06).DayOfWeek
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Thursday") {
    $Day06 = (Get-Date $Day05).AddDays(1)
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Day = ($Day06).DayOfWeek
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Friday") {
    $Day06 = (Get-Date $Day05).AddDays(1)
    $Day06Day = ($Day06).DayOfWeek
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}
elseif ($Day06.DayOfWeek -eq "Saturday") {
    $Day06 = (Get-Date $Day05).AddDays(3)
    $Day06Day = ($Day06).DayOfWeek
    $Day06Format = Get-Date $Day06 -Format "ddMMMyyyy"
    $Day06Output = "(" + "$Day06Day" + ") " + "$Day06Format"
}

########## Day 07 ##########

$Day07 = (Get-Date $Day06).AddDays(1)

if ($Day07.DayOfWeek -eq "Sunday") {
    $Day07 = (Get-Date $Day06).AddDays(2)
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Day = ($Day07).DayOfWeek
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Monday") {
    $Day07 = (Get-Date $Day06).AddDays(1)
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Day = ($Day07).DayOfWeek
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Tuesday") {
    $Day07 = (Get-Date $Day06).AddDays(1)
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Day = ($Day07).DayOfWeek
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Wednesday") {
    $Day07 = (Get-Date $Day06).AddDays(1)
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Day = ($Day07).DayOfWeek
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Thursday") {
    $Day07 = (Get-Date $Day06).AddDays(1)
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Day = ($Day07).DayOfWeek
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Friday") {
    $Day07 = (Get-Date $Day06).AddDays(1)
    $Day07Day = ($Day07).DayOfWeek
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}
elseif ($Day07.DayOfWeek -eq "Saturday") {
    $Day07 = (Get-Date $Day06).AddDays(3)
    $Day07Day = ($Day07).DayOfWeek
    $Day07Format = Get-Date $Day07 -Format "ddMMMyyyy"
    $Day07Output = "(" + "$Day07Day" + ") " + "$Day07Format"
}

########## Day 08 ##########

$Day08 = (Get-Date $Day07).AddDays(1)

if ($Day08.DayOfWeek -eq "Sunday") {
    $Day08 = (Get-Date $Day07).AddDays(2)
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Day = ($Day08).DayOfWeek
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Monday") {
    $Day08 = (Get-Date $Day07).AddDays(1)
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Day = ($Day08).DayOfWeek
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Tuesday") {
    $Day08 = (Get-Date $Day07).AddDays(1)
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Day = ($Day08).DayOfWeek
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Wednesday") {
    $Day08 = (Get-Date $Day07).AddDays(1)
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Day = ($Day08).DayOfWeek
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Thursday") {
    $Day08 = (Get-Date $Day07).AddDays(1)
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Day = ($Day08).DayOfWeek
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Friday") {
    $Day08 = (Get-Date $Day07).AddDays(1)
    $Day08Day = ($Day08).DayOfWeek
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}
elseif ($Day08.DayOfWeek -eq "Saturday") {
    $Day08 = (Get-Date $Day07).AddDays(3)
    $Day08Day = ($Day08).DayOfWeek
    $Day08Format = Get-Date $Day08 -Format "ddMMMyyyy"
    $Day08Output = "(" + "$Day08Day" + ") " + "$Day08Format"
}

########## Day 09 ##########

$Day09 = (Get-Date $Day08).AddDays(1)

if ($Day09.DayOfWeek -eq "Sunday") {
    $Day09 = (Get-Date $Day08).AddDays(2)
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Day = ($Day09).DayOfWeek
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Monday") {
    $Day09 = (Get-Date $Day08).AddDays(1)
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Day = ($Day09).DayOfWeek
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Tuesday") {
    $Day09 = (Get-Date $Day08).AddDays(1)
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Day = ($Day09).DayOfWeek
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Wednesday") {
    $Day09 = (Get-Date $Day08).AddDays(1)
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Day = ($Day09).DayOfWeek
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Thursday") {
    $Day09 = (Get-Date $Day08).AddDays(1)
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Day = ($Day09).DayOfWeek
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Friday") {
    $Day09 = (Get-Date $Day08).AddDays(1)
    $Day09Day = ($Day09).DayOfWeek
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}
elseif ($Day09.DayOfWeek -eq "Saturday") {
    $Day09 = (Get-Date $Day08).AddDays(3)
    $Day09Day = ($Day09).DayOfWeek
    $Day09Format = Get-Date $Day09 -Format "ddMMMyyyy"
    $Day09Output = "(" + "$Day09Day" + ") " + "$Day09Format"
}

########## Day 10 ##########

$Day10 = (Get-Date $Day09).AddDays(1)

if ($Day10.DayOfWeek -eq "Sunday") {
    $Day10 = (Get-Date $Day09).AddDays(2)
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Day = ($Day10).DayOfWeek
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Monday") {
    $Day10 = (Get-Date $Day09).AddDays(1)
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Day = ($Day10).DayOfWeek
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Tuesday") {
    $Day10 = (Get-Date $Day09).AddDays(1)
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Day = ($Day10).DayOfWeek
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Wednesday") {
    $Day10 = (Get-Date $Day09).AddDays(1)
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Day = ($Day10).DayOfWeek
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Thursday") {
    $Day10 = (Get-Date $Day09).AddDays(1)
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Day = ($Day10).DayOfWeek
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Friday") {
    $Day10 = (Get-Date $Day09).AddDays(1)
    $Day10Day = ($Day10).DayOfWeek
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}
elseif ($Day10.DayOfWeek -eq "Saturday") {
    $Day10 = (Get-Date $Day09).AddDays(3)
    $Day10Day = ($Day10).DayOfWeek
    $Day10Format = Get-Date $Day10 -Format "ddMMMyyyy"
    $Day10Output = "(" + "$Day10Day" + ") " + "$Day10Format"
}

########## Day 11 ##########

$Day11 = (Get-Date $Day10).AddDays(1)

if ($Day11.DayOfWeek -eq "Sunday") {
    $Day11 = (Get-Date $Day10).AddDays(2)
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Day = ($Day11).DayOfWeek
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Monday") {
    $Day11 = (Get-Date $Day10).AddDays(1)
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Day = ($Day11).DayOfWeek
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Tuesday") {
    $Day11 = (Get-Date $Day10).AddDays(1)
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Day = ($Day11).DayOfWeek
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Wednesday") {
    $Day11 = (Get-Date $Day10).AddDays(1)
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Day = ($Day11).DayOfWeek
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Thursday") {
    $Day11 = (Get-Date $Day10).AddDays(1)
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Day = ($Day11).DayOfWeek
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Friday") {
    $Day11 = (Get-Date $Day10).AddDays(1)
    $Day11Day = ($Day11).DayOfWeek
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}
elseif ($Day11.DayOfWeek -eq "Saturday") {
    $Day11 = (Get-Date $Day10).AddDays(3)
    $Day11Day = ($Day11).DayOfWeek
    $Day11Format = Get-Date $Day11 -Format "ddMMMyyyy"
    $Day11Output = "(" + "$Day11Day" + ") " + "$Day11Format"
}

########## Day 12 ##########

$Day12 = (Get-Date $Day11).AddDays(1)

if ($Day12.DayOfWeek -eq "Sunday") {
    $Day12 = (Get-Date $Day11).AddDays(2)
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Day = ($Day12).DayOfWeek
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Monday") {
    $Day12 = (Get-Date $Day11).AddDays(1)
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Day = ($Day12).DayOfWeek
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Tuesday") {
    $Day12 = (Get-Date $Day11).AddDays(1)
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Day = ($Day12).DayOfWeek
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Wednesday") {
    $Day12 = (Get-Date $Day11).AddDays(1)
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Day = ($Day12).DayOfWeek
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Thursday") {
    $Day12 = (Get-Date $Day11).AddDays(1)
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Day = ($Day12).DayOfWeek
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Friday") {
    $Day12 = (Get-Date $Day11).AddDays(1)
    $Day12Day = ($Day12).DayOfWeek
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}
elseif ($Day12.DayOfWeek -eq "Saturday") {
    $Day12 = (Get-Date $Day11).AddDays(3)
    $Day12Day = ($Day12).DayOfWeek
    $Day12Format = Get-Date $Day12 -Format "ddMMMyyyy"
    $Day12Output = "(" + "$Day12Day" + ") " + "$Day12Format"
}

########## Day 13 ##########

$Day13 = (Get-Date $Day12).AddDays(1)

if ($Day13.DayOfWeek -eq "Sunday") {
    $Day13 = (Get-Date $Day12).AddDays(2)
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Day = ($Day13).DayOfWeek
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Monday") {
    $Day13 = (Get-Date $Day12).AddDays(1)
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Day = ($Day13).DayOfWeek
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Tuesday") {
    $Day13 = (Get-Date $Day12).AddDays(1)
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Day = ($Day13).DayOfWeek
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Wednesday") {
    $Day13 = (Get-Date $Day12).AddDays(1)
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Day = ($Day13).DayOfWeek
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Thursday") {
    $Day13 = (Get-Date $Day12).AddDays(1)
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Day = ($Day13).DayOfWeek
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Friday") {
    $Day13 = (Get-Date $Day12).AddDays(1)
    $Day13Day = ($Day13).DayOfWeek
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}
elseif ($Day13.DayOfWeek -eq "Saturday") {
    $Day13 = (Get-Date $Day12).AddDays(3)
    $Day13Day = ($Day13).DayOfWeek
    $Day13Format = Get-Date $Day13 -Format "ddMMMyyyy"
    $Day13Output = "(" + "$Day13Day" + ") " + "$Day13Format"
}

########## Day 14 ##########

$Day14 = (Get-Date $Day13).AddDays(1)

if ($Day14.DayOfWeek -eq "Sunday") {
    $Day14 = (Get-Date $Day13).AddDays(2)
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Day = ($Day14).DayOfWeek
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Monday") {
    $Day14 = (Get-Date $Day13).AddDays(1)
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Day = ($Day14).DayOfWeek
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Tuesday") {
    $Day14 = (Get-Date $Day13).AddDays(1)
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Day = ($Day14).DayOfWeek
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Wednesday") {
    $Day14 = (Get-Date $Day13).AddDays(1)
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Day = ($Day14).DayOfWeek
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Thursday") {
    $Day14 = (Get-Date $Day13).AddDays(1)
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Day = ($Day14).DayOfWeek
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Friday") {
    $Day14 = (Get-Date $Day13).AddDays(1)
    $Day14Day = ($Day14).DayOfWeek
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}
elseif ($Day14.DayOfWeek -eq "Saturday") {
    $Day14 = (Get-Date $Day13).AddDays(3)
    $Day14Day = ($Day14).DayOfWeek
    $Day14Format = Get-Date $Day14 -Format "ddMMMyyyy"
    $Day14Output = "(" + "$Day14Day" + ") " + "$Day14Format"
}

########## Day 15 ##########

$Day15 = (Get-Date $Day14).AddDays(1)

if ($Day15.DayOfWeek -eq "Sunday") {
    $Day15 = (Get-Date $Day14).AddDays(2)
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Day = ($Day15).DayOfWeek
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Monday") {
    $Day15 = (Get-Date $Day14).AddDays(1)
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Day = ($Day15).DayOfWeek
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Tuesday") {
    $Day15 = (Get-Date $Day14).AddDays(1)
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Day = ($Day15).DayOfWeek
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Wednesday") {
    $Day15 = (Get-Date $Day14).AddDays(1)
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Day = ($Day15).DayOfWeek
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Thursday") {
    $Day15 = (Get-Date $Day14).AddDays(1)
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Day = ($Day15).DayOfWeek
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Friday") {
    $Day15 = (Get-Date $Day14).AddDays(1)
    $Day15Day = ($Day15).DayOfWeek
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}
elseif ($Day15.DayOfWeek -eq "Saturday") {
    $Day15 = (Get-Date $Day14).AddDays(3)
    $Day15Day = ($Day15).DayOfWeek
    $Day15Format = Get-Date $Day15 -Format "ddMMMyyyy"
    $Day15Output = "(" + "$Day15Day" + ") " + "$Day15Format"
}

########## Day 16 ##########

$Day16 = (Get-Date $Day15).AddDays(1)

if ($Day16.DayOfWeek -eq "Sunday") {
    $Day16 = (Get-Date $Day15).AddDays(2)
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Day = ($Day16).DayOfWeek
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Monday") {
    $Day16 = (Get-Date $Day15).AddDays(1)
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Day = ($Day16).DayOfWeek
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Tuesday") {
    $Day16 = (Get-Date $Day15).AddDays(1)
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Day = ($Day16).DayOfWeek
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Wednesday") {
    $Day16 = (Get-Date $Day15).AddDays(1)
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Day = ($Day16).DayOfWeek
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Thursday") {
    $Day16 = (Get-Date $Day15).AddDays(1)
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Day = ($Day16).DayOfWeek
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Friday") {
    $Day16 = (Get-Date $Day15).AddDays(1)
    $Day16Day = ($Day16).DayOfWeek
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}
elseif ($Day16.DayOfWeek -eq "Saturday") {
    $Day16 = (Get-Date $Day15).AddDays(3)
    $Day16Day = ($Day16).DayOfWeek
    $Day16Format = Get-Date $Day16 -Format "ddMMMyyyy"
    $Day16Output = "(" + "$Day16Day" + ") " + "$Day16Format"
}

########## Day 17 ##########

$Day17 = (Get-Date $Day16).AddDays(1)

if ($Day17.DayOfWeek -eq "Sunday") {
    $Day17 = (Get-Date $Day16).AddDays(2)
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Day = ($Day17).DayOfWeek
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Monday") {
    $Day17 = (Get-Date $Day16).AddDays(1)
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Day = ($Day17).DayOfWeek
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Tuesday") {
    $Day17 = (Get-Date $Day16).AddDays(1)
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Day = ($Day17).DayOfWeek
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Wednesday") {
    $Day17 = (Get-Date $Day16).AddDays(1)
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Day = ($Day17).DayOfWeek
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Thursday") {
    $Day17 = (Get-Date $Day16).AddDays(1)
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Day = ($Day17).DayOfWeek
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Friday") {
    $Day17 = (Get-Date $Day16).AddDays(1)
    $Day17Day = ($Day17).DayOfWeek
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}
elseif ($Day17.DayOfWeek -eq "Saturday") {
    $Day17 = (Get-Date $Day16).AddDays(3)
    $Day17Day = ($Day17).DayOfWeek
    $Day17Format = Get-Date $Day17 -Format "ddMMMyyyy"
    $Day17Output = "(" + "$Day17Day" + ") " + "$Day17Format"
}

########## Day 18 ##########

$Day18 = (Get-Date $Day17).AddDays(1)

if ($Day18.DayOfWeek -eq "Sunday") {
    $Day18 = (Get-Date $Day17).AddDays(2)
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Day = ($Day18).DayOfWeek
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Monday") {
    $Day18 = (Get-Date $Day17).AddDays(1)
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Day = ($Day18).DayOfWeek
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Tuesday") {
    $Day18 = (Get-Date $Day17).AddDays(1)
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Day = ($Day18).DayOfWeek
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Wednesday") {
    $Day18 = (Get-Date $Day17).AddDays(1)
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Day = ($Day18).DayOfWeek
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Thursday") {
    $Day18 = (Get-Date $Day17).AddDays(1)
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Day = ($Day18).DayOfWeek
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Friday") {
    $Day18 = (Get-Date $Day17).AddDays(1)
    $Day18Day = ($Day18).DayOfWeek
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}
elseif ($Day18.DayOfWeek -eq "Saturday") {
    $Day18 = (Get-Date $Day17).AddDays(3)
    $Day18Day = ($Day18).DayOfWeek
    $Day18Format = Get-Date $Day18 -Format "ddMMMyyyy"
    $Day18Output = "(" + "$Day18Day" + ") " + "$Day18Format"
}

########## Day 19 ##########

$Day19 = (Get-Date $Day18).AddDays(1)

if ($Day19.DayOfWeek -eq "Sunday") {
    $Day19 = (Get-Date $Day18).AddDays(2)
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Day = ($Day19).DayOfWeek
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Monday") {
    $Day19 = (Get-Date $Day18).AddDays(1)
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Day = ($Day19).DayOfWeek
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Tuesday") {
    $Day19 = (Get-Date $Day18).AddDays(1)
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Day = ($Day19).DayOfWeek
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Wednesday") {
    $Day19 = (Get-Date $Day18).AddDays(1)
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Day = ($Day19).DayOfWeek
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Thursday") {
    $Day19 = (Get-Date $Day18).AddDays(1)
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Day = ($Day19).DayOfWeek
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Friday") {
    $Day19 = (Get-Date $Day18).AddDays(1)
    $Day19Day = ($Day19).DayOfWeek
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}
elseif ($Day19.DayOfWeek -eq "Saturday") {
    $Day19 = (Get-Date $Day18).AddDays(3)
    $Day19Day = ($Day19).DayOfWeek
    $Day19Format = Get-Date $Day19 -Format "ddMMMyyyy"
    $Day19Output = "(" + "$Day19Day" + ") " + "$Day19Format"
}

########## Day 20 ##########

$Day20 = (Get-Date $Day19).AddDays(1)

if ($Day20.DayOfWeek -eq "Sunday") {
    $Day20 = (Get-Date $Day19).AddDays(2)
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Day = ($Day20).DayOfWeek
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Monday") {
    $Day20 = (Get-Date $Day19).AddDays(1)
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Day = ($Day20).DayOfWeek
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Tuesday") {
    $Day20 = (Get-Date $Day19).AddDays(1)
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Day = ($Day20).DayOfWeek
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Wednesday") {
    $Day20 = (Get-Date $Day19).AddDays(1)
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Day = ($Day20).DayOfWeek
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Thursday") {
    $Day20 = (Get-Date $Day19).AddDays(1)
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Day = ($Day20).DayOfWeek
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Friday") {
    $Day20 = (Get-Date $Day19).AddDays(1)
    $Day20Day = ($Day20).DayOfWeek
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}
elseif ($Day20.DayOfWeek -eq "Saturday") {
    $Day20 = (Get-Date $Day19).AddDays(3)
    $Day20Day = ($Day20).DayOfWeek
    $Day20Format = Get-Date $Day20 -Format "ddMMMyyyy"
    $Day20Output = "(" + "$Day20Day" + ") " + "$Day20Format"
}

########## Day 21 ##########

$Day21 = (Get-Date $Day20).AddDays(1)

if ($Day21.DayOfWeek -eq "Sunday") {
    $Day21 = (Get-Date $Day20).AddDays(2)
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Day = ($Day21).DayOfWeek
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Monday") {
    $Day21 = (Get-Date $Day20).AddDays(1)
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Day = ($Day21).DayOfWeek
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Tuesday") {
    $Day21 = (Get-Date $Day20).AddDays(1)
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Day = ($Day21).DayOfWeek
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Wednesday") {
    $Day21 = (Get-Date $Day20).AddDays(1)
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Day = ($Day21).DayOfWeek
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Thursday") {
    $Day21 = (Get-Date $Day20).AddDays(1)
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Day = ($Day21).DayOfWeek
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Friday") {
    $Day21 = (Get-Date $Day20).AddDays(1)
    $Day21Day = ($Day21).DayOfWeek
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}
elseif ($Day21.DayOfWeek -eq "Saturday") {
    $Day21 = (Get-Date $Day20).AddDays(3)
    $Day21Day = ($Day21).DayOfWeek
    $Day21Format = Get-Date $Day21 -Format "ddMMMyyyy"
    $Day21Output = "(" + "$Day21Day" + ") " + "$Day21Format"
}

########## Day 22 ##########

$Day22 = (Get-Date $Day21).AddDays(1)

if ($Day22.DayOfWeek -eq "Sunday") {
    $Day22 = (Get-Date $Day21).AddDays(2)
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Day = ($Day22).DayOfWeek
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Monday") {
    $Day22 = (Get-Date $Day21).AddDays(1)
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Day = ($Day22).DayOfWeek
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Tuesday") {
    $Day22 = (Get-Date $Day21).AddDays(1)
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Day = ($Day22).DayOfWeek
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Wednesday") {
    $Day22 = (Get-Date $Day21).AddDays(1)
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Day = ($Day22).DayOfWeek
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Thursday") {
    $Day22 = (Get-Date $Day21).AddDays(1)
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Day = ($Day22).DayOfWeek
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Friday") {
    $Day22 = (Get-Date $Day21).AddDays(1)
    $Day22Day = ($Day22).DayOfWeek
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}
elseif ($Day22.DayOfWeek -eq "Saturday") {
    $Day22 = (Get-Date $Day21).AddDays(3)
    $Day22Day = ($Day22).DayOfWeek
    $Day22Format = Get-Date $Day22 -Format "ddMMMyyyy"
    $Day22Output = "(" + "$Day22Day" + ") " + "$Day22Format"
}

########## Day 23 ##########

$Day23 = (Get-Date $Day22).AddDays(1)

if ($Day23.DayOfWeek -eq "Sunday") {
    $Day23 = (Get-Date $Day22).AddDays(2)
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Day = ($Day23).DayOfWeek
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Monday") {
    $Day23 = (Get-Date $Day22).AddDays(1)
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Day = ($Day23).DayOfWeek
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Tuesday") {
    $Day23 = (Get-Date $Day22).AddDays(1)
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Day = ($Day23).DayOfWeek
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Wednesday") {
    $Day23 = (Get-Date $Day22).AddDays(1)
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Day = ($Day23).DayOfWeek
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Thursday") {
    $Day23 = (Get-Date $Day22).AddDays(1)
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Day = ($Day23).DayOfWeek
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Friday") {
    $Day23 = (Get-Date $Day22).AddDays(1)
    $Day23Day = ($Day23).DayOfWeek
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}
elseif ($Day23.DayOfWeek -eq "Saturday") {
    $Day23 = (Get-Date $Day22).AddDays(3)
    $Day23Day = ($Day23).DayOfWeek
    $Day23Format = Get-Date $Day23 -Format "ddMMMyyyy"
    $Day23Output = "(" + "$Day23Day" + ") " + "$Day23Format"
}

########## Day 24 ##########

$Day24 = (Get-Date $Day23).AddDays(1)

if ($Day24.DayOfWeek -eq "Sunday") {
    $Day24 = (Get-Date $Day23).AddDays(2)
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Day = ($Day24).DayOfWeek
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Monday") {
    $Day24 = (Get-Date $Day23).AddDays(1)
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Day = ($Day24).DayOfWeek
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Tuesday") {
    $Day24 = (Get-Date $Day23).AddDays(1)
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Day = ($Day24).DayOfWeek
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Wednesday") {
    $Day24 = (Get-Date $Day23).AddDays(1)
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Day = ($Day24).DayOfWeek
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Thursday") {
    $Day24 = (Get-Date $Day23).AddDays(1)
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Day = ($Day24).DayOfWeek
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Friday") {
    $Day24 = (Get-Date $Day23).AddDays(1)
    $Day24Day = ($Day24).DayOfWeek
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}
elseif ($Day24.DayOfWeek -eq "Saturday") {
    $Day24 = (Get-Date $Day23).AddDays(3)
    $Day24Day = ($Day24).DayOfWeek
    $Day24Format = Get-Date $Day24 -Format "ddMMMyyyy"
    $Day24Output = "(" + "$Day24Day" + ") " + "$Day24Format"
}

########## Day 25 ##########

$Day25 = (Get-Date $Day24).AddDays(1)

if ($Day25.DayOfWeek -eq "Sunday") {
    $Day25 = (Get-Date $Day24).AddDays(2)
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Day = ($Day25).DayOfWeek
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Monday") {
    $Day25 = (Get-Date $Day24).AddDays(1)
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Day = ($Day25).DayOfWeek
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Tuesday") {
    $Day25 = (Get-Date $Day24).AddDays(1)
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Day = ($Day25).DayOfWeek
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Wednesday") {
    $Day25 = (Get-Date $Day24).AddDays(1)
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Day = ($Day25).DayOfWeek
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Thursday") {
    $Day25 = (Get-Date $Day24).AddDays(1)
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Day = ($Day25).DayOfWeek
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Friday") {
    $Day25 = (Get-Date $Day24).AddDays(1)
    $Day25Day = ($Day25).DayOfWeek
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}
elseif ($Day25.DayOfWeek -eq "Saturday") {
    $Day25 = (Get-Date $Day24).AddDays(3)
    $Day25Day = ($Day25).DayOfWeek
    $Day25Format = Get-Date $Day25 -Format "ddMMMyyyy"
    $Day25Output = "(" + "$Day25Day" + ") " + "$Day25Format"
}

########## Day 26 ##########

$Day26 = (Get-Date $Day25).AddDays(1)

if ($Day26.DayOfWeek -eq "Sunday") {
    $Day26 = (Get-Date $Day25).AddDays(2)
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Day = ($Day26).DayOfWeek
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Monday") {
    $Day26 = (Get-Date $Day25).AddDays(1)
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Day = ($Day26).DayOfWeek
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Tuesday") {
    $Day26 = (Get-Date $Day25).AddDays(1)
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Day = ($Day26).DayOfWeek
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Wednesday") {
    $Day26 = (Get-Date $Day25).AddDays(1)
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Day = ($Day26).DayOfWeek
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Thursday") {
    $Day26 = (Get-Date $Day25).AddDays(1)
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Day = ($Day26).DayOfWeek
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Friday") {
    $Day26 = (Get-Date $Day25).AddDays(1)
    $Day26Day = ($Day26).DayOfWeek
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}
elseif ($Day26.DayOfWeek -eq "Saturday") {
    $Day26 = (Get-Date $Day25).AddDays(3)
    $Day26Day = ($Day26).DayOfWeek
    $Day26Format = Get-Date $Day26 -Format "ddMMMyyyy"
    $Day26Output = "(" + "$Day26Day" + ") " + "$Day26Format"
}

########## Day 27 ##########

$Day27 = (Get-Date $Day26).AddDays(1)

if ($Day27.DayOfWeek -eq "Sunday") {
    $Day27 = (Get-Date $Day26).AddDays(2)
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Day = ($Day27).DayOfWeek
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Monday") {
    $Day27 = (Get-Date $Day26).AddDays(1)
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Day = ($Day27).DayOfWeek
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Tuesday") {
    $Day27 = (Get-Date $Day26).AddDays(1)
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Day = ($Day27).DayOfWeek
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Wednesday") {
    $Day27 = (Get-Date $Day26).AddDays(1)
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Day = ($Day27).DayOfWeek
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Thursday") {
    $Day27 = (Get-Date $Day26).AddDays(1)
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Day = ($Day27).DayOfWeek
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Friday") {
    $Day27 = (Get-Date $Day26).AddDays(1)
    $Day27Day = ($Day27).DayOfWeek
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}
elseif ($Day27.DayOfWeek -eq "Saturday") {
    $Day27 = (Get-Date $Day26).AddDays(3)
    $Day27Day = ($Day27).DayOfWeek
    $Day27Format = Get-Date $Day27 -Format "ddMMMyyyy"
    $Day27Output = "(" + "$Day27Day" + ") " + "$Day27Format"
}

########## Day 28 ##########

$Day28 = (Get-Date $Day27).AddDays(1)

if ($Day28.DayOfWeek -eq "Sunday") {
    $Day28 = (Get-Date $Day27).AddDays(2)
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Day = ($Day28).DayOfWeek
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Monday") {
    $Day28 = (Get-Date $Day27).AddDays(1)
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Day = ($Day28).DayOfWeek
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Tuesday") {
    $Day28 = (Get-Date $Day27).AddDays(1)
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Day = ($Day28).DayOfWeek
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Wednesday") {
    $Day28 = (Get-Date $Day27).AddDays(1)
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Day = ($Day28).DayOfWeek
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Thursday") {
    $Day28 = (Get-Date $Day27).AddDays(1)
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Day = ($Day28).DayOfWeek
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Friday") {
    $Day28 = (Get-Date $Day27).AddDays(1)
    $Day28Day = ($Day28).DayOfWeek
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}
elseif ($Day28.DayOfWeek -eq "Saturday") {
    $Day28 = (Get-Date $Day27).AddDays(3)
    $Day28Day = ($Day28).DayOfWeek
    $Day28Format = Get-Date $Day28 -Format "ddMMMyyyy"
    $Day28Output = "(" + "$Day28Day" + ") " + "$Day28Format"
}

########## Day 29 ##########

$Day29 = (Get-Date $Day28).AddDays(1)

if ($Day29.DayOfWeek -eq "Sunday") {
    $Day29 = (Get-Date $Day28).AddDays(2)
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Day = ($Day29).DayOfWeek
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Monday") {
    $Day29 = (Get-Date $Day28).AddDays(1)
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Day = ($Day29).DayOfWeek
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Tuesday") {
    $Day29 = (Get-Date $Day28).AddDays(1)
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Day = ($Day29).DayOfWeek
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Wednesday") {
    $Day29 = (Get-Date $Day28).AddDays(1)
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Day = ($Day29).DayOfWeek
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Thursday") {
    $Day29 = (Get-Date $Day28).AddDays(1)
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Day = ($Day29).DayOfWeek
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Friday") {
    $Day29 = (Get-Date $Day28).AddDays(1)
    $Day29Day = ($Day29).DayOfWeek
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}
elseif ($Day29.DayOfWeek -eq "Saturday") {
    $Day29 = (Get-Date $Day28).AddDays(3)
    $Day29Day = ($Day29).DayOfWeek
    $Day29Format = Get-Date $Day29 -Format "ddMMMyyyy"
    $Day29Output = "(" + "$Day29Day" + ") " + "$Day29Format"
}

########## Day 30 ##########

$Day30 = (Get-Date $Day29).AddDays(1)

if ($Day30.DayOfWeek -eq "Sunday") {
    $Day30 = (Get-Date $Day29).AddDays(2)
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Day = ($Day30).DayOfWeek
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Monday") {
    $Day30 = (Get-Date $Day29).AddDays(1)
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Day = ($Day30).DayOfWeek
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Tuesday") {
    $Day30 = (Get-Date $Day29).AddDays(1)
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Day = ($Day30).DayOfWeek
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Wednesday") {
    $Day30 = (Get-Date $Day29).AddDays(1)
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Day = ($Day30).DayOfWeek
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Thursday") {
    $Day30 = (Get-Date $Day29).AddDays(1)
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Day = ($Day30).DayOfWeek
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Friday") {
    $Day30 = (Get-Date $Day29).AddDays(1)
    $Day30Day = ($Day30).DayOfWeek
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}
elseif ($Day30.DayOfWeek -eq "Saturday") {
    $Day30 = (Get-Date $Day29).AddDays(3)
    $Day30Day = ($Day30).DayOfWeek
    $Day30Format = Get-Date $Day30 -Format "ddMMMyyyy"
    $Day30Output = "(" + "$Day30Day" + ") " + "$Day30Format"
}

########## Day 31 ##########

$Day31 = (Get-Date $Day30).AddDays(1)

if ($Day31.DayOfWeek -eq "Sunday") {
    $Day31 = (Get-Date $Day30).AddDays(2)
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Day = ($Day31).DayOfWeek
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Monday") {
    $Day31 = (Get-Date $Day30).AddDays(1)
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Day = ($Day31).DayOfWeek
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Tuesday") {
    $Day31 = (Get-Date $Day30).AddDays(1)
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Day = ($Day31).DayOfWeek
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Wednesday") {
    $Day31 = (Get-Date $Day30).AddDays(1)
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Day = ($Day31).DayOfWeek
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Thursday") {
    $Day31 = (Get-Date $Day30).AddDays(1)
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Day = ($Day31).DayOfWeek
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Friday") {
    $Day31 = (Get-Date $Day30).AddDays(1)
    $Day31Day = ($Day31).DayOfWeek
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}
elseif ($Day31.DayOfWeek -eq "Saturday") {
    $Day31 = (Get-Date $Day30).AddDays(3)
    $Day31Day = ($Day31).DayOfWeek
    $Day31Format = Get-Date $Day31 -Format "ddMMMyyyy"
    $Day31Output = "(" + "$Day31Day" + ") " + "$Day31Format"
}

########## Day 32 ##########

$Day32 = (Get-Date $Day31).AddDays(1)

if ($Day32.DayOfWeek -eq "Sunday") {
    $Day32 = (Get-Date $Day31).AddDays(2)
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Day = ($Day32).DayOfWeek
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Monday") {
    $Day32 = (Get-Date $Day31).AddDays(1)
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Day = ($Day32).DayOfWeek
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Tuesday") {
    $Day32 = (Get-Date $Day31).AddDays(1)
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Day = ($Day32).DayOfWeek
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Wednesday") {
    $Day32 = (Get-Date $Day31).AddDays(1)
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Day = ($Day32).DayOfWeek
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Thursday") {
    $Day32 = (Get-Date $Day31).AddDays(1)
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Day = ($Day32).DayOfWeek
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Friday") {
    $Day32 = (Get-Date $Day31).AddDays(1)
    $Day32Day = ($Day32).DayOfWeek
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}
elseif ($Day32.DayOfWeek -eq "Saturday") {
    $Day32 = (Get-Date $Day31).AddDays(3)
    $Day32Day = ($Day32).DayOfWeek
    $Day32Format = Get-Date $Day32 -Format "ddMMMyyyy"
    $Day32Output = "(" + "$Day32Day" + ") " + "$Day32Format"
}

########## Day 33 ##########

$Day33 = (Get-Date $Day32).AddDays(1)

if ($Day33.DayOfWeek -eq "Sunday") {
    $Day33 = (Get-Date $Day32).AddDays(2)
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Day = ($Day33).DayOfWeek
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Monday") {
    $Day33 = (Get-Date $Day32).AddDays(1)
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Day = ($Day33).DayOfWeek
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Tuesday") {
    $Day33 = (Get-Date $Day32).AddDays(1)
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Day = ($Day33).DayOfWeek
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Wednesday") {
    $Day33 = (Get-Date $Day32).AddDays(1)
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Day = ($Day33).DayOfWeek
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Thursday") {
    $Day33 = (Get-Date $Day32).AddDays(1)
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Day = ($Day33).DayOfWeek
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Friday") {
    $Day33 = (Get-Date $Day32).AddDays(1)
    $Day33Day = ($Day33).DayOfWeek
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}
elseif ($Day33.DayOfWeek -eq "Saturday") {
    $Day33 = (Get-Date $Day32).AddDays(3)
    $Day33Day = ($Day33).DayOfWeek
    $Day33Format = Get-Date $Day33 -Format "ddMMMyyyy"
    $Day33Output = "(" + "$Day33Day" + ") " + "$Day33Format"
}

########## Day 34 ##########

$Day34 = (Get-Date $Day33).AddDays(1)

if ($Day34.DayOfWeek -eq "Sunday") {
    $Day34 = (Get-Date $Day33).AddDays(2)
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Day = ($Day34).DayOfWeek
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Monday") {
    $Day34 = (Get-Date $Day33).AddDays(1)
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Day = ($Day34).DayOfWeek
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Tuesday") {
    $Day34 = (Get-Date $Day33).AddDays(1)
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Day = ($Day34).DayOfWeek
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Wednesday") {
    $Day34 = (Get-Date $Day33).AddDays(1)
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Day = ($Day34).DayOfWeek
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Thursday") {
    $Day34 = (Get-Date $Day33).AddDays(1)
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Day = ($Day34).DayOfWeek
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Friday") {
    $Day34 = (Get-Date $Day33).AddDays(1)
    $Day34Day = ($Day34).DayOfWeek
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}
elseif ($Day34.DayOfWeek -eq "Saturday") {
    $Day34 = (Get-Date $Day33).AddDays(3)
    $Day34Day = ($Day34).DayOfWeek
    $Day34Format = Get-Date $Day34 -Format "ddMMMyyyy"
    $Day34Output = "(" + "$Day34Day" + ") " + "$Day34Format"
}

########## Day 35 ##########

$Day35 = (Get-Date $Day34).AddDays(1)

if ($Day35.DayOfWeek -eq "Sunday") {
    $Day35 = (Get-Date $Day34).AddDays(2)
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Day = ($Day35).DayOfWeek
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Monday") {
    $Day35 = (Get-Date $Day34).AddDays(1)
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Day = ($Day35).DayOfWeek
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Tuesday") {
    $Day35 = (Get-Date $Day34).AddDays(1)
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Day = ($Day35).DayOfWeek
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Wednesday") {
    $Day35 = (Get-Date $Day34).AddDays(1)
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Day = ($Day35).DayOfWeek
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Thursday") {
    $Day35 = (Get-Date $Day34).AddDays(1)
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Day = ($Day35).DayOfWeek
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Friday") {
    $Day35 = (Get-Date $Day34).AddDays(1)
    $Day35Day = ($Day35).DayOfWeek
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}
elseif ($Day35.DayOfWeek -eq "Saturday") {
    $Day35 = (Get-Date $Day34).AddDays(3)
    $Day35Day = ($Day35).DayOfWeek
    $Day35Format = Get-Date $Day35 -Format "ddMMMyyyy"
    $Day35Output = "(" + "$Day35Day" + ") " + "$Day35Format"
}

########## Day 36 ##########

$Day36 = (Get-Date $Day35).AddDays(1)

if ($Day36.DayOfWeek -eq "Sunday") {
    $Day36 = (Get-Date $Day35).AddDays(2)
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Day = ($Day36).DayOfWeek
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Monday") {
    $Day36 = (Get-Date $Day35).AddDays(1)
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Day = ($Day36).DayOfWeek
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Tuesday") {
    $Day36 = (Get-Date $Day35).AddDays(1)
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Day = ($Day36).DayOfWeek
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Wednesday") {
    $Day36 = (Get-Date $Day35).AddDays(1)
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Day = ($Day36).DayOfWeek
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Thursday") {
    $Day36 = (Get-Date $Day35).AddDays(1)
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Day = ($Day36).DayOfWeek
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Friday") {
    $Day36 = (Get-Date $Day35).AddDays(1)
    $Day36Day = ($Day36).DayOfWeek
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}
elseif ($Day36.DayOfWeek -eq "Saturday") {
    $Day36 = (Get-Date $Day35).AddDays(3)
    $Day36Day = ($Day36).DayOfWeek
    $Day36Format = Get-Date $Day36 -Format "ddMMMyyyy"
    $Day36Output = "(" + "$Day36Day" + ") " + "$Day36Format"
}

########## Day 37 ##########

$Day37 = (Get-Date $Day36).AddDays(1)

if ($Day37.DayOfWeek -eq "Sunday") {
    $Day37 = (Get-Date $Day36).AddDays(2)
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Day = ($Day37).DayOfWeek
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Monday") {
    $Day37 = (Get-Date $Day36).AddDays(1)
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Day = ($Day37).DayOfWeek
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Tuesday") {
    $Day37 = (Get-Date $Day36).AddDays(1)
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Day = ($Day37).DayOfWeek
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Wednesday") {
    $Day37 = (Get-Date $Day36).AddDays(1)
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Day = ($Day37).DayOfWeek
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Thursday") {
    $Day37 = (Get-Date $Day36).AddDays(1)
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Day = ($Day37).DayOfWeek
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Friday") {
    $Day37 = (Get-Date $Day36).AddDays(1)
    $Day37Day = ($Day37).DayOfWeek
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}
elseif ($Day37.DayOfWeek -eq "Saturday") {
    $Day37 = (Get-Date $Day36).AddDays(3)
    $Day37Day = ($Day37).DayOfWeek
    $Day37Format = Get-Date $Day37 -Format "ddMMMyyyy"
    $Day37Output = "(" + "$Day37Day" + ") " + "$Day37Format"
}

########## Day 38 ##########

$Day38 = (Get-Date $Day37).AddDays(1)

if ($Day38.DayOfWeek -eq "Sunday") {
    $Day38 = (Get-Date $Day37).AddDays(2)
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Day = ($Day38).DayOfWeek
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Monday") {
    $Day38 = (Get-Date $Day37).AddDays(1)
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Day = ($Day38).DayOfWeek
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Tuesday") {
    $Day38 = (Get-Date $Day37).AddDays(1)
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Day = ($Day38).DayOfWeek
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Wednesday") {
    $Day38 = (Get-Date $Day37).AddDays(1)
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Day = ($Day38).DayOfWeek
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Thursday") {
    $Day38 = (Get-Date $Day37).AddDays(1)
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Day = ($Day38).DayOfWeek
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Friday") {
    $Day38 = (Get-Date $Day37).AddDays(1)
    $Day38Day = ($Day38).DayOfWeek
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}
elseif ($Day38.DayOfWeek -eq "Saturday") {
    $Day38 = (Get-Date $Day37).AddDays(3)
    $Day38Day = ($Day38).DayOfWeek
    $Day38Format = Get-Date $Day38 -Format "ddMMMyyyy"
    $Day38Output = "(" + "$Day38Day" + ") " + "$Day38Format"
}

########## Day 39 ##########

$Day39 = (Get-Date $Day38).AddDays(1)

if ($Day39.DayOfWeek -eq "Sunday") {
    $Day39 = (Get-Date $Day38).AddDays(2)
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Day = ($Day39).DayOfWeek
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Monday") {
    $Day39 = (Get-Date $Day38).AddDays(1)
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Day = ($Day39).DayOfWeek
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Tuesday") {
    $Day39 = (Get-Date $Day38).AddDays(1)
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Day = ($Day39).DayOfWeek
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Wednesday") {
    $Day39 = (Get-Date $Day38).AddDays(1)
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Day = ($Day39).DayOfWeek
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Thursday") {
    $Day39 = (Get-Date $Day38).AddDays(1)
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Day = ($Day39).DayOfWeek
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Friday") {
    $Day39 = (Get-Date $Day38).AddDays(1)
    $Day39Day = ($Day39).DayOfWeek
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}
elseif ($Day39.DayOfWeek -eq "Saturday") {
    $Day39 = (Get-Date $Day38).AddDays(3)
    $Day39Day = ($Day39).DayOfWeek
    $Day39Format = Get-Date $Day39 -Format "ddMMMyyyy"
    $Day39Output = "(" + "$Day39Day" + ") " + "$Day39Format"
}

########## Day 40 ##########

$Day40 = (Get-Date $Day39).AddDays(1)

if ($Day40.DayOfWeek -eq "Sunday") {
    $Day40 = (Get-Date $Day39).AddDays(2)
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Day = ($Day40).DayOfWeek
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Monday") {
    $Day40 = (Get-Date $Day39).AddDays(1)
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Day = ($Day40).DayOfWeek
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Tuesday") {
    $Day40 = (Get-Date $Day39).AddDays(1)
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Day = ($Day40).DayOfWeek
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Wednesday") {
    $Day40 = (Get-Date $Day39).AddDays(1)
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Day = ($Day40).DayOfWeek
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Thursday") {
    $Day40 = (Get-Date $Day39).AddDays(1)
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Day = ($Day40).DayOfWeek
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Friday") {
    $Day40 = (Get-Date $Day39).AddDays(1)
    $Day40Day = ($Day40).DayOfWeek
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}
elseif ($Day40.DayOfWeek -eq "Saturday") {
    $Day40 = (Get-Date $Day39).AddDays(3)
    $Day40Day = ($Day40).DayOfWeek
    $Day40Format = Get-Date $Day40 -Format "ddMMMyyyy"
    $Day40Output = "(" + "$Day40Day" + ") " + "$Day40Format"
}

######## Week 1 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day01Output;$Day02Output;$Day03Output;$Day04Output;$Day05Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 2 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day06Output;$Day07Output;$Day08Output;$Day09Output;$Day10Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 3 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day11Output;$Day12Output;$Day13Output;$Day14Output;$Day15Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 4 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day16Output;$Day17Output;$Day18Output;$Day19Output;$Day20Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 5 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day21Output;$Day22Output;$Day23Output;$Day24Output;$Day25Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 6 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day26Output;$Day27Output;$Day28Output;$Day29Output;$Day30Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append

######## Week 7 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day31Output;$Day32Output;$Day33Output;$Day34Output;$Day35Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append


######## Week 8 ########

Write-Output ";;;;" | Out-File $CSV -Append
Write-Output "$Day36Output;$Day37Output;$Day38Output;$Day39Output;$Day40Output" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append
Write-Output ";;;;" | Out-File $CSV -Append

######## Start Excel ########

Start-Sleep -Seconds 5

Start-Process excel.exe

Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("%")
[System.Windows.Forms.SendKeys]::SendWait("a")
[System.Windows.Forms.SendKeys]::SendWait("f")
[System.Windows.Forms.SendKeys]::SendWait("t")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{UP}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("$CSV")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 10
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
