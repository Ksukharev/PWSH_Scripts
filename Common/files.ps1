# ПРОВЕРКА РАЗМЕРА 
(Get-ChildItem -Path "C:\Путь\К\Папке" -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum / 1GB

# АРХИВАЦИЯ 
Compress-Archive -Path "C:\temp\file.txt" -DestinationPath "C:\temp\archive.zip"


# ПЕРЕМЕЩЕНИЕ ФАЙЛОВ В КОРЕНЬ "*.inf", "*.cat", "*.sys", "*.dll"
# Путь к корневой папке (измените под себя)
$RootPath = "C:\Your\Root\Folder"
 
# Проверяем, что папка существует
if (-not (Test-Path -Path $RootPath -PathType Container)) {
   Write-Error "Корневая папка не существует: $RootPath"
   exit 1
}
 
# Расширения файлов для перемещения
$Extensions = @("*.inf", "*.cat", "*.sys", "*.dll")
 
foreach ($ext in $Extensions) {
   Get-ChildItem -Path $RootPath -Filter $ext -File -Recurse -ErrorAction SilentlyContinue |
       Move-Item -Destination $RootPath -Force -ErrorAction Continue
}

    Get-ChildItem -Path $RootPath -Filter $ext -File -Recurse -ErrorAction SilentlyContinue |

        Move-Item -Destination $RootPath -Force -ErrorAction Continue


 