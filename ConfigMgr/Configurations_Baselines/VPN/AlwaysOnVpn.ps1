# Discovery 
$Folder = "$env:ProgramData\Cisco\Cisco Secure Client\VPN\Profile\MgmtTun\VpnMgmtTunProfile.xml"

if (Test-Path -Path $Folder) { 
  Write-Output "Exist"
}  else {
 Write-Output "No-Exist"
}


# Creation 

$source = "\\nn-sccm-001\SCCM_Share\Scripts\VPN mgmt\VpnMgmtTunProfile.xml"
$destinationFolder = "$env:ProgramData\Cisco\Cisco Secure Client\VPN\Profile\MgmtTun"

Copy-Item $source -Destination $destinationFolder -Recurse



#deleate
$Path = "$env:ProgramData\Cisco\Cisco Secure Client\VPN\Profile\MgmtTun\VpnMgmtTunProfile.xml"

Remove-Item -Path $Path -Force -ErrorAction SilentlyContinue

