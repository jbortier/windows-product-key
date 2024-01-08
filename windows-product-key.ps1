$productKey = Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" | Select-Object -ExpandProperty "BackupProductKeyDefault"

if ($productKey -eq "") {
    Write-Host -ForegroundColor Red "No Windows product key found."
    exit 1
}

Write-Host -ForegroundColor Green "The Windows product key is $productKey"
$productKey | Set-Clipboard
Write-Host "Windows product key copied to clipboard."