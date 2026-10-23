Set-Location "$PSScriptRoot/.."

# Startup Scripts
& "Config/Functions/CheckFolders.ps1"
. "Config/Functions/SetLanguage.ps1"

# Config Language
$Lang = Get-Content -Raw (Join-Path -Path "Lang" -ChildPath "${currentLanguage}.json") | ConvertFrom-Json

# Logon

    # ENV

        # System Folders
        $folderMyDocuments = [System.Environment]::GetFolderPath('MyDocuments')
        $folderMyPictures = [System.Environment]::GetFolderPath('MyPictures')
        $folderMyVideos = [System.Environment]::GetFolderPath('MyVideos')
        $folderMyMusics = [System.Environment]::GetFolderPath('MyMusic')

    # Scripts Blocks

        # Default
        [scriptblock]$ExitTerminalSession = {
            Clear-Host
            Start-Sleep -Milliseconds 500
            (Get-Process -Id $PID).CloseMainWindow()
        }
        [scriptblock]$InvalidResponse = {
            Clear-Host

                Write-Host ""
            Write-Host "    " -NoNewline
            Write-Host $Lang.Menu.InvalidResponse -ForegroundColor Red
                Write-Host "" 
        }
        [scriptblock]$BackToMainMenu = {
            & (Join-Path -Path "Main" -ChildPath "Menu.ps1")
        }

        # Make Dir
        [scriptblock]$make_dirDocs = {
            New-Item (Join-Path -Path $folderMyDocuments -ChildPath "FileOrganizer") -ItemType Directory -Force | Out-Null
        }

        [scriptblock]$make_dirPics = {
            New-Item (Join-Path -Path $folderMyPictures -ChildPath "FileOrganizer") -ItemType Directory -Force | Out-Null
        }

        [scriptblock]$make_dirVids = {
            New-Item (Join-Path -Path $folderMyVideos -ChildPath "FileOrganizer") -ItemType Directory -Force | Out-Null
        }

        [scriptblock]$make_dirMscs = {
            New-Item (Join-Path -Path $folderMyMusics -ChildPath "FileOrganizer") -ItemType Directory -Force | Out-Null
        }

        # Check dir 'Media'
        if (-not (Test-Path "Media" -ErrorAction SilentlyContinue)) {
            New-Item "Media" -ItemType Directory -Force | Out-Null
        }

        # Make: User Folders

            if (-not (Test-Path (Join-Path -Path $folderMyDocuments -ChildPath "FileOrganizer"))) {& $make_dirDocs}

            if (-not (Test-Path (Join-Path -Path $folderMyPictures -ChildPath "FileOrganizer"))) {& $make_dirPics}

            if (-not (Test-Path (Join-Path -Path $folderMyVideos -ChildPath "FileOrganizer"))) {& $make_dirVids}

            if (-not (Test-Path (Join-Path -Path $folderMyMusics -ChildPath "FileOrganizer"))) {& $make_dirMscs}

# Menu
Clear-Host
    Write-Host "" 
Write-Host "                FileOrganizer"
    Write-Host "" 

    Start-Sleep -Seconds 1

    Write-Host ""
Write-Host "    " -NoNewline
Write-Host $Lang.Menu.questStartORG
    Write-Host "" 
    Start-Sleep -Seconds 1
Write-Host "        " -NoNewline
Write-Host $Lang.General.YES_OR_NOT
    Write-Host "" 

    $questStart_FileOrganizer = Read-Host

        switch ($questStart_FileOrganizer) {

            "S" {& "Config/Functions/MoveItems.ps1"}
            "Y" {& "Config/Functions/MoveItems.ps1"}
            "N" {& $ExitTerminalSession}

            Default {
                & $InvalidResponse
                Start-Sleep -Seconds 1
                & $BackToMainMenu
            }
        }