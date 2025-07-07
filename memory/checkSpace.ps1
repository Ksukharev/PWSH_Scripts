
$currentUser = [Environment]::UserName
Write-Host $currentUser


$downloads = (Get-ChildItem C:\Users\$currentUser\Downloads -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb

Write-Host ("Размер -- 'Загрузки': ", $downloads) 

