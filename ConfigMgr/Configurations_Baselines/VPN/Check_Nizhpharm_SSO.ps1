$Folder = "$env:ProgramData\Cisco\Cisco Secure Client\VPN\Profile\NIZHPHARM_SSO.xml"

if (Test-Path -Path $Folder) { 
  Write-Output "Exist"
}  else {
 Write-Output "No-Exist"
}
