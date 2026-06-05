 # All user's PC. Short search
 Get-ADComputer -Filter "Description -like '*sc13435*'" -Properties Description

 # All user's PC. Long search
 Get-ADComputer -Filter * -Properties Description | Where-Object {$_.Description -like "*sc13435*"}

 # Time when PC was added to domain  
 Get-ADComputer MS-N-2023 -Properties whenCreated | Select-Object Name, whenCreated


# Script to move the computer object in AD to the OU supplied as a variable
# 1st Example Command line Powershell.exe -NoProfile -ExecutionPolicy bypass -file MoveToOU.ps1 "%MachineObjectOU%"
# 2nd example command line Powershell.exe -NoProfile -ExecutionPolicy bypass -file MoveToOU.ps1 "OU=Desktop,OU=Computers,OU=Test,DC=Test,DC=Local"

# $OU = $args[0]

# try {
# $CompDN = ([ADSISEARCHER]”sAMAccountName=$($env:COMPUTERNAME)$”).FindOne().Path
# $CompObj = [ADSI]”$CompDN”
# $CompObj.psbase.MoveTo([ADSI]”LDAP://$($OU)”)
# }
# catch {
# $_.Exception.Message ; Exit 1
# }

