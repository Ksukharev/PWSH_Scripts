#Checking space in userDirection
#Gets infogrmation form C:\Users\userName\Downloads
$downloads = (Get-ChildItem C:\Users\$env:USERNAME\Downloads -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
$documents = (Get-ChildItem C:\Users\$env:USERNAME\Documents -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
$desktop = (Get-ChildItem C:\Users\$env:USERNAME\Desktop -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb

# Outputs in console information 
Write-Host ("Загрузки: ", $downloads) 
Write-Host ("Документы: ", $documents) 
Write-Host ("Рабочий стол: ", $desktop) 


# Do not lets close the window 
Read-Host


