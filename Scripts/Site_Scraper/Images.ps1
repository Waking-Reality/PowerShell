Clear-Host

Remove-Variable Scrap*
$ErrorActionPreference = ‘SilentlyContinue’
$ScrapingFolder = '.\Scraper'
$ScrapingFile = '\Images.txt'
$ScrapeList = "$ScrapingFolder$ScrapingFile"
$Error.Clear()

Write-Host ""
Write-Host "========================================"
Write-Host "=        Website Image Scraper         ="
Write-Host "=                                      ="
Write-Host "=          Results may vary            ="
Write-Host "========================================"
Write-Host ""
$WebSite = Read-Host "Enter the website to scrape images from"
Set-Location ~\Desktop
Remove-Item $ScrapingFolder -Recurse -Force
New-Item -Path $ScrapingFolder -ItemType Directory -Force
Write-Host ""
Invoke-RestMethod -Uri $WebSite | Out-File $ScrapeList -Force
$ScrapedImages = @((Get-Content $ScrapeList | Select-String -Pattern 'htt(p|ps):.*(jpg|png|gif)').Matches.Value | Select-Object -Unique | Sort-Object)
Set-Location $ScrapingFolder
foreach ($ScrapedImage in $ScrapedImages){
    if (!(Invoke-WebRequest -Uri $ScrapedImage)){
    }
    else {
        Write-Host $ScrapedImage
        Invoke-WebRequest -Uri $ScrapedImage -OutFile ($ScrapedImage -replace '.*/')
    }
}
Set-Location ~\Desktop
Remove-Item $ScrapeList -Force
Start-Sleep -Seconds 2
Start-Process $ScrapingFolder
