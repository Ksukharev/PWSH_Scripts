# All User info  
Get-ADUser -Identity "" -Properties *

# all users from department
Get-ADUser -Filter 'Department -eq "IT Services Division"' | Select-Object Name, Surname 