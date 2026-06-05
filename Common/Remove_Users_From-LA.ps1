$users = import-csv $PSScriptRoot\remove.csv

  ForEach($user in $users)
  {Get-LocalGroupMember -SID 'S-1-5-32-544' | Where {$_.name -like $user.samaccountname} | Remove-LocalGroupMember -SID 'S-1-5-32-544'}
  
$KeyPath = "HKLM:\SOFTWARE\STADA\"
$ValueName = "remove_adm"
$ValueData = "1"

 try{
     Get-ItemProperty -Path $KeyPath -Name $valueName -ErrorAction Stop
 }
 catch [System.Management.Automation.ItemNotFoundException] {
     New-Item -Path $KeyPath -Force
     New-ItemProperty -Path $KeyPath -Name $ValueName -Value $ValueData -Force
 }
 catch {
     New-ItemProperty -Path $KeyPath -Name $ValueName -Value $ValueData -Type String -Force
 }