# ENV

    # "Menu.ps1"
    $MainScript = Resolve-Path "Main/Menu.ps1"

    # Depedences "Pwsh.ps1"
    $Depedences = Resolve-Path "Main/Depedences/Pwsh.ps1"

# Start
if (Get-Command "pwsh" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainScript" -Verb RunAs
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $Depedences"
    }