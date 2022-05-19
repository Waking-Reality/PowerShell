Clear-Host

Remove-Variable Scrap*
$ErrorActionPreference = ‘SilentlyContinue’
$ScrapingFolder = '.\Scraper'
$ScrapingFile = '\Links.txt'
$ScrapeList = "$ScrapingFolder$ScrapingFile"
$Error.Clear()

Write-Host ""
Write-Host "========================================"
Write-Host "=        Website Link Scraper          ="
Write-Host "=                                      ="
Write-Host "=          Results may vary            ="
Write-Host "========================================"
Write-Host ""
$WebSite = Read-Host "Enter the website to scrape links from"
Set-Location ~\Desktop
Remove-Item $ScrapingFolder -Recurse -Force
New-Item -Path $ScrapingFolder -ItemType Directory -Force
Write-Host ""
Invoke-RestMethod -Uri $WebSite | Out-File $ScrapeList -Force
$ScrapedLinks = @((Get-Content $ScrapeList | Select-String -Pattern 'htt(p|ps)://.*\w{3}').Matches.Value | Select-Object -Unique)
foreach ($ScrapedLink in $ScrapedLinks){
    ($ScrapedLink -replace '".*')
    Write-Host $ScrapedLink
}
