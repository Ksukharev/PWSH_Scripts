# Полный путь к создаваемому ярлыку
$ShortcutPath = "$env:Public\Desktop\Directum RX.url"

# Целевой URL
$TargetURL = "http://directum.stada.ru"

# Имя файла иконки (должен находиться в папке со скриптом)
# Поддерживаемые форматы: .ico, .dll, .exe
$IconFileName = "favicon_directum.ico"

$IconPath = Join-Path -Path $PSScriptRoot -ChildPath $IconFileName

# содержимое файла
$UrlContent = @"
[InternetShortcut]
URL=$TargetURL
"@

# Добавляем параметры иконки, если файл найден
if (Test-Path -Path $IconPath) {
    $UrlContent += "`nIconFile=$IconPath`nIconIndex=0"
    Write-Output "[INFO] Иконка '$IconFileName' будет использована для ярлыка."
} else {
    Write-Warning "[ВНИМАНИЕ] Файл иконки '$IconFileName' не найден в папке скрипта. Ярлык будет создан без иконки."
}


try {
    $UrlContent | Out-File -FilePath $ShortcutPath -Encoding ASCII -Force
    Write-Output "[УСПЕХ] Ярлык успешно создан/обновлен: $ShortcutPath"
    Write-Output "        Ссылается на: $TargetURL"
} catch {
    Write-Error "[ОШИБКА] Не удалось создать файл ярлыка: $_"
}спешно создан"оздан"