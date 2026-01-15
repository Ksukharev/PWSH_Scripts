$conf = "$PSScriptRoot\PhishmanAddIn.dll.config"
$ico = "$PSScriptRoot\icon.jpg"

$destinationFolder = "C:\Program Files\Phishman\Phishman Add-in for MS Outlook\"

Copy-Item $conf -Destination $destinationFolder -Recurse -Force






