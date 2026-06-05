$installed = Get-Package -Name "Visual Studio Community 2026" 

Write-Host $installed


if($installed) {
    Write-Output 0
}
else {
    Write-Output 1
}