# Получение всех данных о пользователе  
Get-ADUser -Identity "sc13435" -Properties *

# Список всех пользователей из Департамента
Get-ADUser -Filter 'Department -eq "IT Services Division"' | Select-Object Name, Surname 