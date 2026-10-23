# Pre-ENV
$target_MyDocs = Join-Path -Path $folderMyDocuments -ChildPath "FileOrganizer"
$target_MyPics = Join-Path -Path $folderMyPictures -ChildPath "FileOrganizer"
$target_MyVids = Join-Path -Path $folderMyVideos -ChildPath "FileOrganizer"
$target_MyMsc = Join-Path -Path $folderMyMusics -ChildPath "FileOrganizer"

# GEN LOG
[bool]$GenerateLog = $true
[string]$GenTypeLog = "FileOrganizer"

# GUI
Clear-Host

    Write-Host ""
Write-Host "    " -NoNewline
Write-Host $Lang.MoveItems.Moving -ForegroundColor Yellow -NoNewline

    Start-Sleep -Seconds 1

    # Move-Items

        # Documents
        $listed_GenericDocuments = @("*.txt", "*.md")

        foreach ($list in $listed_GenericDocuments) {
            Move-Item (Join-Path -Path "Media" -ChildPath "$list") -Destination $target_MyDocs -ErrorAction SilentlyContinue
        }

        # Pictures
        $listed_Pictures = @("*.png", "*.jpg", "*.jpeg", "*.gif", "*.bmp", "*.svg", "*.webp", "*.avif", "*.apng", "*.raw")

        foreach ($list in $listed_Pictures) {
            Move-Item (Join-Path -Path "Media" -ChildPath "$list") -Destination $target_MyPics -ErrorAction SilentlyContinue
        }

        # Videos
        $listed_Videos = @("*.mp4", "*.mkv")

        foreach ($list in $listed_Videos) {
            Move-Item (Join-Path -Path "Media" -ChildPath "$list") -Destination $target_MyVids -ErrorAction SilentlyContinue
        }

        # Musics
        $listed_Musics = @("*.mp3", "*.wav")

        foreach ($list in $listed_Musics) {
            Move-Item (Join-Path -Path "Media" -ChildPath "$list") -Destination $target_MyMsc -ErrorAction SilentlyContinue
        }
Write-Host " " -NoNewline
Write-Host $Lang.MoveItems.Finished -ForegroundColor Green
    Write-Host ""
    
& "Config/Functions/CleanLogs.ps1"
& "Config/Functions/GenerateLog.ps1"

    Start-Sleep -Milliseconds 500

    Write-Host ""

Write-Host "    " -NoNewline
Write-Host $Lang.MoveItems.questGoBackToMainMenu
    Write-Host ""
Write-Host "        " -NoNewline
Write-Host $Lang.General.YES_OR_NOT
    Write-Host ""

$questBackToMainMenu = Read-Host

    switch ($questBackToMainMenu) {

        "S" {& $BackToMainMenu}
        "Y" {& $BackToMainMenu}
        "N" {& $ExitTerminalSession}

        Default {
            & $InvalidResponse
            Start-Sleep -Seconds 1
            & $BackToMainMenu
        }
    }