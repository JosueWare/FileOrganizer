if (-not (Test-Path ".env")) {
    New-Item ".env" -ItemType Directory | Out-Null
}

if (-not (Test-Path -Path "Logs")) {
    New-Item -Path "Logs" -ItemType Directory | Out-Null
}