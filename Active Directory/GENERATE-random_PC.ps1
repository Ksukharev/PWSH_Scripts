$SearchBase  = "CN=MS-N-2023,OU=Notebook,OU=MSK,OU=DESKTOPS,DC=stada,DC=ru"
$Count       = 10
$SearchScope = "Subtree"

$computers = Get-ADComputer -Filter * -SearchBase $SearchBase -SearchScope $SearchScope

if ($computers) {
    $selectedComputers = $computers | Get-Random -Count ([Math]::Min($Count, $computers.Count))
    $selectedComputers | Select-Object Name | Format-Table -AutoSize
}
else {
    Write-Warning "В указанном OU компьютеры не найдены: $SearchBase"
}


