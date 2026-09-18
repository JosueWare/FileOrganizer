# Logon

    # ENV

        # Full Path
        $fullpath_Depedences = Join-Path -Path "Config" -ChildPath "Main"
        $fullpath_Depedences = Join-Path -Path $fullpath_Depedences -ChildPath "Depedences"
        $fullpath_Depedences = Join-Path -Path $fullpath_Depedences -ChildPath "dpPwsh.ps1"

    $MainScript = Resolve-Path (Join-Path -Path "Config" -ChildPath "Main" | Join-Path -ChildPath "Menu.ps1")

# Init
if (Get-Command "pwsh.exe" -ErrorAction SilentlyContinue) {
    Start-Process -FilePath "pwsh.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $MainScript"
}
    else {
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-NoExit", "-Command & $fullpath_Depedences"
    }