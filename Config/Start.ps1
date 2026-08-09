# ENV
$MainFile = Resolve-Path ".\Config\Main\Menu.ps1"
$DepeFile = Resolve-Path ".\Config\Main\Help\Depedences.ps1"

# Init
if (Get-Command "pwsh.exe" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainFile"
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $DepeFile"
    }