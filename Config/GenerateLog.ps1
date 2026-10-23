if ($GenerateLog -eq $true) {
    if ($GenTypeLog -eq "FileOrganizer") {
        # Set log file name
        $logfileName = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

        # Get current real time date
        $nowDate = Get-Date -Format "dd/MM/yyyy"
        $nowHour = Get-Date -Format "HH:mm:ss"
        
        # Set content log file
        $contentFileLog = @()
    }
    else {
        Write-Host "Log type not specified"
    }
}
else {
    Write-Host "Log response is FALSE"
}