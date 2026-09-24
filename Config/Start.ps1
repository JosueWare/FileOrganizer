# ENV

    # "Menu.ps1"
    $fullpath = Join-Path -Path "Config" -ChildPath "Main"
    $fullpath = Join-Path -ChildPath "Menu.ps1"

    $MainScript = Resolve-Path $fullpath

    # Depedences "dpPwsh.ps1"
    $fullpath = Join-Path -Path "Config" -ChildPath "Main"
    $fullpath = Join-Path -Path "Depedences" -ChildPath "dpPwsh.ps1"

    $Depedences = Resolve-Path $fullpath

# Start

if (Get-Command "pwsh" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "Command & $MainScript" -Verb RunAs
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "Command & $Depedences"
    }