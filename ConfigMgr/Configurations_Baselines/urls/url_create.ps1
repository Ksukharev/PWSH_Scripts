$source = "\\nn-sccm-001\SCCM_Share\Scripts\MyService_Icon\Сервисный портал MyService Nizhpharm.url"
$source2 = "\\nn-sccm-001\SCCM_Share\Scripts\MyService_Icon\myservicenew.ico"
$destinationFolder = "C:\Users\Public\Desktop"
$destinationFolder2 = "C:\Templates"

Copy-Item $source2 -Destination $destinationFolder2 -Recurse

Copy-Item $source -Destination $destinationFolder -Recurse

