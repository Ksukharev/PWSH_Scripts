# Путь для размещения ярлыка (ярлык для всех пользователей на этом ПК)
$ShortcutPath = "$env:Public\Desktop\###.url"

# Целевая веб-ссылка
$URL = "http://####.ru"

# Создаём содержимое 
@"
[InternetShortcut]
URL=$URL
IconIndex=0
"@ | Out-File -FilePath $ShortcutPath -Encoding ASCII -Force

Write-Output "Ярлык для $URL успешно создан"