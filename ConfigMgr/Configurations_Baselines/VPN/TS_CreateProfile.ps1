#########################
# УСТАНОВКА С MGmnt 
#########################
$destination1 = "C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Profile"
$destination2 = "C:\ProgramData\Cisco\Cisco Secure Client\VPN\Profile"
$destination3 = "C:\ProgramData\Cisco\Cisco Secure Client\VPN\Profile\MgmtTun"
$sourceFile = "\\nn-sccm-001\SCCM_Share\Programms\CiscoAnyConnect\change_profile2025\NIZHPHARM_INT.xml"
$sourceFile2 = "\\nn-sccm-001\SCCM_Share\Programms\CiscoAnyConnect\change_profile2025\VpnMgmtTunProfile.xml"

# Check if the folders exists
if (-not (Test-Path -Path $destination1)) {
    # Create the folder if it does not exist
    New-Item -Path $destination1 -ItemType Directory -Force
    Write-Host "Folder created: $destination1"
} else {
    Write-Host "Folder already exists."
}

if (-not (Test-Path -Path $destination2)) {
    # Create the folder if it does not exist
    New-Item -Path $destination2 -ItemType Directory -Force
    Write-Host "Folder created: $destination"
} else {
    Write-Host "Folder already exists."
}

# Copy the file into the folder
Copy-Item -Path $sourceFile -Destination $destination1 -Force
Copy-Item -Path $sourceFile -Destination $destination2 -Force
Copy-Item -Path $sourceFile2 -Destination $destination3 -Force 

#########################
# УСТАНОВКА БЕЗ MGmnt 
#########################

$destination1 = "C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Profile"
$destination2 = "C:\ProgramData\Cisco\Cisco Secure Client\VPN\Profile"
$sourceFile = "\\nn-sccm-001\SCCM_Share\Programms\CiscoAnyConnect\change_profile2025\NIZHPHARM_INT.xml"

# Check if the folders exists
if (-not (Test-Path -Path $destination1)) {
    # Create the folder if it does not exist
    New-Item -Path $destination1 -ItemType Directory -Force
    Write-Host "Folder created: $destination1"
} else {
    Write-Host "Folder already exists."
}

if (-not (Test-Path -Path $destination2)) {
    # Create the folder if it does not exist
    New-Item -Path $destination2 -ItemType Directory -Force
    Write-Host "Folder created: $destination"
} else {
    Write-Host "Folder already exists."
}

# Copy the file into the folder
Copy-Item -Path $sourceFile -Destination $destination1 -Force
Copy-Item -Path $sourceFile -Destination $destination2 -Force