 # Найти все ПК с Description БЫСТРЫЙ
 Get-ADComputer -Filter "Description -like '*sc13435*'" -Properties Description

 # Найти все ПК с Description ДОЛГИЙ 
 Get-ADComputer -Filter * -Properties Description | Where-Object {$_.Description -like "*sc13435*"}

 # Получение LAPS 
$input = Read-Host 'Введите имя машины'


$passwordObject = Get-LapsADPassword $input  -AsPlainText 

if ($passwordObject) {
    $password = $passwordObject.Password
}
else {
    $password = "Ошибка: Пароль не найден."
}

Write-Host $password 
Read-Host


