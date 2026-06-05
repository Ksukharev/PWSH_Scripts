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
