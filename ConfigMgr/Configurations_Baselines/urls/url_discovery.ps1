#This script tests the path below and then returns "Installed" if the path exists.
#Use for Configuration Item Discovery

$PublicDesktopIcon = ( Get-Item -Path "$($ENV:PUBLIC)\Desktop\Directum-RX.url" )
If ( $null -eq $PublicDesktopIcon ) {
  $Compliance = "No-Exist"
} Else {
  $Compliance = "Exist"
}



#############################################################
# Вторая версия 
#############################################################

$PublicDesktopIcon = "$ENV:PUBLIC\Desktop\Directum RX.url"

if (Test-Path -Path $PublicDesktopIcon) { 
  Write-Output "Exist"
}  else {
 Write-Output "No-Exist"
}






