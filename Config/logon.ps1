# ENV
$main_file = Resolve-Path ".\Config\Main\Menu.ps1"
$dep_file = Resolve-Path ".\Config\Main\Help\Depedences.ps1"

# Init
if (Get-Command "pwsh.exe" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $main_file"
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $dep_file"
    }