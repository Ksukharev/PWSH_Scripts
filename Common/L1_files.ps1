# ПРОВЕРКА РАЗМЕРА 
(Get-ChildItem -Path "C:\Путь\К\Папке" -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum / 1GB

# АРХИВАЦИЯ 
Compress-Archive -Path "C:\temp\file.txt" -DestinationPath "C:\temp\archive.zip"




 