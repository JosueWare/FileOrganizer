if ($GenerateLog -eq $true) {
    if ($GenTypeLog -eq "FileOrganizer") {
        Write-Host "Gerando Log.."
    }
    else {
        Write-Host "Log type not specified"
    }
}
else {
    Write-Host "Log response is FALSE"
}