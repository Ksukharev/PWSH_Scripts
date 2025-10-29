# Проверка прав администратора
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Error "This script requires Administrator privileges!"
    exit 1
}

# Поиск Cisco продуктов в реестре
$uninstallPaths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*"
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$ciscoProducts = Get-ItemProperty $uninstallPaths -ErrorAction SilentlyContinue |
                 Where-Object { $_.DisplayName -like "*Cisco*" -and $_.PSChildName -notlike "**Update*" }

Write-Host "Found $(($ciscoProducts | Measure-Object).Count) Cisco products:"

foreach ($product in $ciscoProducts) {
    Write-Host "Processing: $($product.DisplayName)"
    
    # Способ 1: Через UninstallString
    if ($product.UninstallString) {
        $uninstallString = $product.UninstallString
        
        # Если это MSI установщик
        if ($uninstallString -like "*msiexec*") {
            $productCode = $product.PSChildName
            $arguments = "/x $productCode /qn /norestart"
            
            try {
                Start-Process "msiexec.exe" -ArgumentList $arguments -Wait -NoNewWindow
                if ($LASTEXITCODE -eq 0) {
                    Write-Host "✓ Successfully removed: $($product.DisplayName)" -ForegroundColor Green
                } else {
                    Write-Warning "Failed to remove: $($product.DisplayName), exit code: $LASTEXITCODE"
                }
            } catch {
                Write-Warning "Exception: $($_.Exception.Message)"
            }
        }
        # Если это EXE установщик
        else {
            try {
                # Пытаемся запустить оригинальный UninstallString
                $process = Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$uninstallString`" /quiet /norestart" -Wait -PassThru
                if ($process.ExitCode -eq 0) {
                    Write-Host "✓ Successfully removed: $($product.DisplayName)" -ForegroundColor Green
                } else {
                    Write-Warning "Failed to remove: $($product.DisplayName), exit code: $($process.ExitCode)"
                }
            } catch {
                Write-Warning "Exception: $($_.Exception.Message)"
            }
        }
    }
}

Write-Host "Operation completed."
 