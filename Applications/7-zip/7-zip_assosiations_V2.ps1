# Проверка наличия 7-Zip
$7zPath = "C:\Program Files\7-Zip\7z.dll"
if (-not (Test-Path $7zPath)) {
    Write-Warning "7-Zip не найден в пути по умолчанию: $7zPath"
    Write-Host "Пожалуйста, установите 7-Zip или укажите правильный путь" -ForegroundColor Yellow
    exit 1
}

# Функция для создания ключей реестра
function Create-RegistryKey {
    param([string]$Path)
    
    if (-not (Test-Path -LiteralPath $Path)) {
        try {
            New-Item -Path $Path -Force -ErrorAction Stop | Out-Null
            Write-Host "✓ Создан ключ: $Path" -ForegroundColor Green
            return $true
        }
        catch {
            Write-Warning "Ошибка создания ключа $Path : $_"
            return $false
        }
    }
    return $true
}

# Функция для установки значений реестра
function Set-RegistryValue {
    param(
        [string]$Path,
        [string]$Name,
        [object]$Value,
        [string]$PropertyType = "String",
        [switch]$Force
    )
    
    try {
        if ($PropertyType -eq "Binary" -and $Value -is [string]) {
            $Value = [byte[]]($Value -split ',' | ForEach-Object { [byte]$_ })
        }
        
        $null = New-ItemProperty -LiteralPath $Path -Name $Name -Value $Value -PropertyType $PropertyType -Force -ErrorAction Stop
        Write-Host "✓ Установлено значение: $Path\$Name = $Value" -ForegroundColor Green
        return $true
    }
    catch {
        Write-Warning "Ошибка установки значения $Path\$Name : $_"
        return $false
    }
}

# Массивы с настройками для каждого типа файлов
$fileTypes = @(
    @{
        Extension = ".tgz"
        ClassName = "7-Zip.tgz"
        DefaultValue = "TGZ Archive"
        ContentType = "application/x-compressed"
        IconIndex = 8
    },
    @{
        Extension = ".tar"
        ClassName = "7-Zip.tar"
        DefaultValue = "TAR Archive"
        ContentType = "application/x-tar"
        IconIndex = 8
    },
    @{
        Extension = ".cab"
        ClassName = "7-Zip.cab"
        DefaultValue = "CAB Archive"
        ContentType = $null
        IconIndex = 10
    },
    @{
        Extension = ".7z"
        ClassName = "7-Zip.7z"
        DefaultValue = "7z Archive"
        ContentType = "application/x-compressed"
        IconIndex = 0
    },
    @{
        Extension = ".zip"
        ClassName = "7-Zip.zip"
        DefaultValue = "ZIP Archive"
        ContentType = "application/x-zip-compressed"
        IconIndex = 5
    },
    @{
        Extension = ".rar"
        ClassName = "7-Zip.rar"
        DefaultValue = "RAR Archive"
        ContentType = "application/x-compressed"
        IconIndex = 6
    }
)

Write-Host "Начинаем настройку ассоциаций файлов для 7-Zip..." -ForegroundColor Cyan

# Создание базовой структуры для каждого расширения
foreach ($fileType in $fileTypes) {
    $ext = $fileType.Extension
    $className = $fileType.ClassName
    
    Write-Host "`nОбрабатываем расширение: $ext" -ForegroundColor Yellow
    
    # Создание ключей для расширения
    $basePaths = @(
        "HKLM:\SOFTWARE\Classes\$ext",
        "HKLM:\SOFTWARE\Classes\$ext\OpenWithProgids", 
        "HKLM:\SOFTWARE\Classes\$ext\PersistentHandler"
    )
    
    if ($ext -eq ".zip") {
        $basePaths += @(
            "HKLM:\SOFTWARE\Classes\$ext\CompressedFolder",
            "HKLM:\SOFTWARE\Classes\$ext\CompressedFolder\ShellNew"
        )
    }
    
    foreach ($path in $basePaths) {
        Create-RegistryKey -Path $path
    }
    
    # Создание ключей для класса
    $classPaths = @(
        "HKLM:\SOFTWARE\Classes\$className",
        "HKLM:\SOFTWARE\Classes\$className\DefaultIcon",
        "HKLM:\SOFTWARE\Classes\$className\shell",
        "HKLM:\SOFTWARE\Classes\$className\shell\open", 
        "HKLM:\SOFTWARE\Classes\$className\shell\open\command"
    )
    
    foreach ($path in $classPaths) {
        Create-RegistryKey -Path $path
    }
    
    # Настройка ассоциаций для расширения
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$ext" -Name "(default)" -Value $className
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$ext" -Name "PerceivedType" -Value "compressed"
    
    if ($fileType.ContentType) {
        Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$ext" -Name "Content Type" -Value $fileType.ContentType
    }
    
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$ext\OpenWithProgids" -Name $className -Value ""
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$ext\PersistentHandler" -Name "(default)" -Value "{098f2470-bae0-11cd-b579-08002b30bfeb}"
    
    # Специальные настройки для ZIP
    if ($ext -eq ".zip") {
        Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\.zip" -Name "DontCompressInPackage" -Value ""
        Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew" -Name "Data" -Value "80,75,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" -PropertyType Binary
        Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\.zip\CompressedFolder\ShellNew" -Name "ItemName" -Value "@%SystemRoot%\system32\zipfldr.dll,-10194" -PropertyType ExpandString
        Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\.zip\PersistentHandler" -Name "(default)" -Value "{3B224B11-9363-407e-850F-C9E1FFACD8FB}"
    }
    
    # Настройка класса
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$className" -Name "(default)" -Value $fileType.DefaultValue
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$className\DefaultIcon" -Name "(default)" -Value "C:\Program Files\7-Zip\7z.dll,$($fileType.IconIndex)"
    Set-RegistryValue -Path "HKLM:\SOFTWARE\Classes\$className\shell\open\command" -Name "(default)" -Value "`"C:\Program Files\7-Zip\7zFM.exe`" `"%1`""
}

Write-Host "`nНастройка ассоциаций файлов завершена!" -ForegroundColor Green

# Обновление проводника для применения изменений
Write-Host "`nОбновление проводника Windows..." -ForegroundColor Cyan
try {
    # Обновление ассоциаций файлов
    cmd.exe /c "assoc .zip=7-Zip.zip" 2>$null
    cmd.exe /c "assoc .7z=7-Zip.7z" 2>$null
    cmd.exe /c "assoc .rar=7-Zip.rar" 2>$null
    cmd.exe /c "assoc .tar=7-Zip.tar" 2>$null
    cmd.exe /c "assoc .tgz=7-Zip.tgz" 2>$null
    cmd.exe /c "assoc .cab=7-Zip.cab" 2>$null
    
    # Перезапуск проводника
    Stop-Process -Name "explorer" -Force -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 2
    Write-Host "✓ Проводник обновлен" -ForegroundColor Green
}
catch {
    Write-Warning "Не удалось обновить проводник: $_"
    Write-Host "Для применения изменений может потребоваться перезагрузка" -ForegroundColor Yellow
}

Write-Host "`nСкрипт успешно завершен!" -ForegroundColor Green
Write-Host "Проверьте ассоциации файлов в проводнике Windows." -ForegroundColor Cyan