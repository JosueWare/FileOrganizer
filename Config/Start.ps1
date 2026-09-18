# Logon

    # ENV
    $MainFile = Resolve-Path (Join-Path -Path "Config" -ChildPath @("Main", "Menu.ps1"))
    $DepeFile = Resolve-Path (Join-Path -Path "Config" -ChildPath @("Main", "Depedences", "dpPwsh.ps1"))

    $MainScript = Resolve-Path (Join-Path -Path "Config" -ChildPath "Main" | Join-Path -ChildPath "Menu.ps1")
    $Depedences = Resolve-Path (Join-Path -Path "Config" -ChildPath "Main" | Join-Path -Path "Depedences" -ChildPath "dpPwsh.ps1")

# Init
if (Get-Command "pwsh.exe" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainScript"
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $Depedences"
    }