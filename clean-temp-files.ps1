<#
.SYNOPSIS
Cleans temporary files on Windows computers.
.DESCRIPTION
This script safely removes temporary files from the user's Temp folder
and the system Windows Temp folder.
#>

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "     TEMP FILES CLEANUP SCRIPT" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Clean user Temp folder
$userTemp = "$env:TEMP"
Write-Host "[1/2] Cleaning user Temp folder: $userTemp" -ForegroundColor Yellow
try {
    Remove-Item "$userTemp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "      ✓ User Temp folder cleaned" -ForegroundColor Green
}
catch {
    Write-Host "      ! Some files were in use and could not be deleted" -ForegroundColor DarkYellow
}

# Clean Windows Temp folder
$windowsTemp = "C:\Windows\Temp"
Write-Host "[2/2] Cleaning Windows Temp folder: $windowsTemp" -ForegroundColor Yellow
try {
    Remove-Item "$windowsTemp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "      ✓ Windows Temp folder cleaned" -ForegroundColor Green
}
catch {
    Write-Host "      ! Some files were in use and could not be deleted" -ForegroundColor DarkYellow
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "     CLEANUP COMPLETED" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
