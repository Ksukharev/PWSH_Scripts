do {
    $processes = Get-Process -Name winword -ErrorAction SilentlyContinue
    if ($processes) {
        Write-Output "Ожидание закрытия $($processes.Count) процесса(ов) PBIDesktop.exe... (PID: $($processes.Id -join ', '))"
        Start-Sleep -Seconds 2  # Пауза 2 секунды [cite:2]
    }
} until (-not $processes)

Write-Output "Процесс Word закрыт. Скрипт завершён."