Write-Host "User directories" -ForegroundColor green
Write-Host "System directories" -ForegroundColor yellow
Write-Host 


#Checking space in userDirections
#Gets infogrmation form C:\Users\userName\
Write-Host "--- User direct files ---"
$downloads = (Get-ChildItem C:\Users\$env:USERNAME\Downloads -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
$documents = (Get-ChildItem C:\Users\$env:USERNAME\Documents -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
$desktop = (Get-ChildItem C:\Users\$env:USERNAME\Desktop -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb

# Outputs in console information 
Write-Host ("Downloads: ", $downloads) -ForegroundColor green
Write-Host ("Documents: ", $documents) -ForegroundColor green
Write-Host ("Desktop: ", $desktop) -ForegroundColor green

Write-Host "--- Cashes files ---"
$temp = (Get-ChildItem C:\Users\$env:USERNAME\AppData\Local\Temp -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
# Outputs in console information 
Write-Host ("Temp: ", $temp) -ForegroundColor yellow

#office365 temp files
$testPath = "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Office\16.0\OfficeFileCache"

#Checking if Office365 Cash directory is exist
if (Test-Path $testPath) 
{
    $tempOffice = (Get-ChildItem C:\Users\$env:USERNAME\AppData\Local\Microsoft\Office\16.0\OfficeFileCache -force -Recurse -ErrorAction SilentlyContinue| measure Length -sum).sum / 1Gb
    Write-Host ('Temp: ', $temp) -ForegroundColor yellow

}

else 
{
    Write-Host "Directory: `nC:\Users\USER\AppData\Local\Microsoft\Office\16.0\OfficeFileCache is missing" -ForegroundColor yellow
}



# Do not lets close the window 
Read-Host


