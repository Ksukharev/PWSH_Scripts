# Check size 
(Get-ChildItem -Path "C:\Path\to\folder" -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum / 1GB

# Archive files
Compress-Archive -Path "C:\temp\file.txt" -DestinationPath "C:\temp\archive.zip"



