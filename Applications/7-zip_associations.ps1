if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tgz") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tgz" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tgz\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tgz\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tgz\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tgz\PersistentHandler" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tar") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tar" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tar\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tar\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.tar\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.tar\PersistentHandler" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.cab") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.cab" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.cab\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.cab\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.cab\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.cab\PersistentHandler" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.7z") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.7z" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.7z\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.7z\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.7z\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.7z\PersistentHandler" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.zip") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.zip" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.zip\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.zip\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.zip\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.zip\PersistentHandler" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.rar") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.rar" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.rar\OpenWithProgids") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.rar\OpenWithProgids" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\.rar\PersistentHandler") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\.rar\PersistentHandler" -force -ea SilentlyContinue };

# Создаем классы для 7-Zip
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tgz") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tgz" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tgz\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tgz\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell\open\command" -force -ea SilentlyContinue };

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tar") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tar" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tar\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tar\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.tar\shell\open\command" -force -ea SilentlyContinue };

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.cab") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.cab" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.cab\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.cab\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.cab\shell\open\command" -force -ea SilentlyContinue };

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.7z") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.7z" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.7z\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.7z\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.7z\shell\open\command" -force -ea SilentlyContinue };

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.zip") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.zip" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.zip\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.zip\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.zip\shell\open\command" -force -ea SilentlyContinue };

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.rar") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.rar" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.rar\DefaultIcon") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.rar\DefaultIcon" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell\open") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell\open" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell\open\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\7-Zip.rar\shell\open\command" -force -ea SilentlyContinue };

# Настройка ассоциаций для расширений
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tgz' -Name '(default)' -Value '7-Zip.tgz' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tgz' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tgz' -Name 'Content Type' -Value 'application/x-compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tgz\OpenWithProgids' -Name '7-Zip.tgz' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tgz\PersistentHandler' -Name '(default)' -Value '{098f2470-bae0-11cd-b579-08002b30bfeb}' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tar' -Name '(default)' -Value '7-Zip.tar' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tar' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tar' -Name 'Content Type' -Value 'application/x-tar' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tar\OpenWithProgids' -Name '7-Zip.tar' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.tar\PersistentHandler' -Name '(default)' -Value '{098f2470-bae0-11cd-b579-08002b30bfeb}' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.cab' -Name '(default)' -Value '7-Zip.cab' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.cab' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.cab\OpenWithProgids' -Name '7-Zip.cab' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.cab\PersistentHandler' -Name '(default)' -Value '{098f2470-bae0-11cd-b579-08002b30bfeb}' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.7z' -Name '(default)' -Value '7-Zip.7z' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.7z' -Name 'Content Type' -Value 'application/x-compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.7z' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.7z\OpenWithProgids' -Name '7-Zip.7z' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.7z\PersistentHandler' -Name '(default)' -Value '{098f2470-bae0-11cd-b579-08002b30bfeb}' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip' -Name '(default)' -Value '7-Zip.zip' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip' -Name 'Content Type' -Value 'application/x-zip-compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip' -Name 'DontCompressInPackage' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew' -Name 'Data' -Value ([byte[]](0x50,0x4b,0x05,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew' -Name 'ItemName' -Value '@%SystemRoot%\system32\zipfldr.dll,-10194' -PropertyType ExpandString -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip\OpenWithProgids' -Name '7-Zip.zip' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.zip\PersistentHandler' -Name '(default)' -Value '{3B224B11-9363-407e-850F-C9E1FFACD8FB}' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.rar' -Name '(default)' -Value '7-Zip.rar' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.rar' -Name 'Content Type' -Value 'application/x-compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.rar' -Name 'PerceivedType' -Value 'compressed' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.rar\OpenWithProgids' -Name '7-Zip.rar' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\.rar\PersistentHandler' -Name '(default)' -Value '{098f2470-bae0-11cd-b579-08002b30bfeb}' -PropertyType String -Force -ea SilentlyContinue;

# Настройка классов 7-Zip
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tgz' -Name '(default)' -Value 'TGZ Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tgz\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,8' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tgz\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tar' -Name '(default)' -Value 'TAR Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tar\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,8' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.tar\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.cab' -Name '(default)' -Value 'CAB Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.cab\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,10' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.cab\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.7z' -Name '(default)' -Value '7z Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.7z\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,0' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.7z\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.zip' -Name '(default)' -Value 'ZIP Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.zip\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,5' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.zip\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;

New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.rar' -Name '(default)' -Value 'RAR Archive' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.rar\DefaultIcon' -Name '(default)' -Value 'C:\Program Files\7-Zip\7z.dll,6' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\7-Zip.rar\shell\open\command' -Name '(default)' -Value '"C:\Program Files\7-Zip\7zFM.exe" "%1"' -PropertyType String -Force -ea SilentlyContinue;