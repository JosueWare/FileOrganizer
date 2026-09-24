# ENV

    # "Menu.ps1"
    $fullpath = Join-Path -Path "Config" -ChildPath "Main"
    $fullpath = Join-Path -Path $fullpath -ChildPath "Menu.ps1"

    $MainScript = $fullpath

    # Depedences "dpPwsh.ps1"
    $fullpath = Join-Path -Path "Config" -ChildPath "Main"
    $fullpath = Join-Path -Path $fullpath -ChildPath "Depedences"
    $fullpath = Join-Path -Path $fullpath -ChildPath "dpPwsh.ps1"

    $Depedences = $fullpath

# Start

if (Get-Command "pwsh" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainScript" -Verb RunAs
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $Depedences"
    }