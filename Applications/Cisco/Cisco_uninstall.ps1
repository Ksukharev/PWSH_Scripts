#Найти продукты Cisco
$cisco = Get-WmiObject -Class win32_product | where { $_.Name -like "*Cisco*"}

# Исполняемый файл msiexec
$msiexec = "C:\Windows\system32\msiexec.exe"

if ($cisco -ne $null) {
    foreach ($app in $cisco) {
        # Логируем информацию о продукте
        Write-Host "Uninstalling product: $($app.Name)"
        
        # Формируем аргументы для деинсталляции
        $arguments = "/x $($app.IdentifyingNumber) /qn /norestart"
        
        try {
            # Запускаем процесс деинсталляции
            Start-Process -FilePath $msiexec -ArgumentList $arguments -Wait
            
            # Сообщаем об успехе
            Write-Host "Product '$($app.Name)' successfully uninstalled."
        }
        catch {
            # Обрабатываем возможную ошибку
            Write-Warning "Failed to uninstall product '$($app.Name)', error: $_"
        }
    }
}
