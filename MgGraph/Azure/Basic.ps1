# Подключение к Graph 
Connect-MgGraph -Scopes # указать необходимы роли "UserAuthenticationMethod.Read", "User.ReadWrite.All"

# Получение текущих прав
Get-MgContext | Select-Object -ExpandProperty Scopes