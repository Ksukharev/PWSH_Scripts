
$RootPath = "C:\Path"
 
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
       Write-Host "$ext - Перемещен"
}

    Get-ChildItem -Path $RootPath -Filter $ext -File -Recurse -ErrorAction SilentlyContinue |

        Move-Item -Destination $RootPath -Force -ErrorAction Continue