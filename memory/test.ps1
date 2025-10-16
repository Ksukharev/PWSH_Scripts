# Вывод заголовков разных цветов
Write-Host "User directories" -ForegroundColor Green
Write-Host "System directories" -ForegroundColor Yellow
Write-Host ""

# Проверяем пространство в пользовательских директориях
Write-Host "--- User directory files ---"

# Путь к папкам текущего пользователя
$userProfile = $env:USERPROFILE

# Измеряем объём каждого раздела
$downloadsDir = Join-Path $userProfile "Downloads"
$documentsDir = Join-Path $userProfile "Documents"
$desktopDir = Join-Path $userProfile "Desktop"

# Получаем суммарный размер файлов
$downloadsSize = ((Get-ChildItem $downloadsDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { !$_.PSIsContainer }) | Measure-Object -Property Length -Sum).Sum / 1GB
$documentsSize = ((Get-ChildItem $documentsDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { !$_.PSIsContainer }) | Measure-Object -Property Length -Sum).Sum / 1GB
$desktopSize = ((Get-ChildItem $desktopDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { !$_.PSIsContainer }) | Measure-Object -Property Length -Sum).Sum / 1GB

# Выводим результаты
Write-Host "Downloads: $($downloadsSize.ToString("N2")) GB" -ForegroundColor Green
Write-Host "Documents: $($documentsSize.ToString("N2")) GB" -ForegroundColor Green
Write-Host "Desktop: $($desktopSize.ToString("N2")) GB" -ForegroundColor Green

Write-Host ""
Write-Host "--- Cache files ---"

# Временные файлы пользователей
$tempDir = Join-Path $userProfile "AppData\Local\Temp"
$tempSize = ((Get-ChildItem $tempDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { !$_.PSIsContainer }) | Measure-Object -Property Length -Sum).Sum / 1GB
Write-Host "Temp: $($tempSize.ToString("N2")) GB" -ForegroundColor Yellow

# Директории временных файлов Office
$officeCacheDir = Join-Path $userProfile "AppData\Local\Microsoft\Office\16.0\OfficeFileCache"

if (Test-Path $officeCacheDir) {
    $officeCacheSize = ((Get-ChildItem $officeCacheDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { !$_.PSIsContainer }) | Measure-Object -Property Length -Sum).Sum / 1GB
    Write-Host "Office File Cache: $($officeCacheSize.ToString("N2")) GB" -ForegroundColor Yellow
} else {
    Write-Host "Office File Cache directory does not exist." -ForegroundColor Yellow
}

# Ждем ввода пользователя, чтобы окно не закрылось сразу
Read-Host "Press Enter to exit..."