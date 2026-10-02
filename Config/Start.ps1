# ENV

    # "Menu.ps1"
    $MainScript = @(
        (Join-Path (Join-Path "GUI" "Main") "Menu.ps1")
    )

    # Depedences "dpPwsh.ps1"
    $Depedences = @(
        (Join-Path (Join-Path (Join-Path "GUI" "Main") "Depedences") "dpPwsh.ps1")
    )

# Start
if (Get-Command "pwsh" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainScript" -Verb RunAs
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $Depedences"
    }