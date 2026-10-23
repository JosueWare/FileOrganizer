if (-not (Test-Path -Path "Logs")) {
    New-Item -Path "Logs" -ItemType Directory | Out-Null
}