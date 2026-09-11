Set-Location "$PSScriptRoot\..\.."
# Logon

    # ENV

        # System Folders
        $folderMyDocuments = [System.Environment]::GetFolderPath('MyDocuments')
        $folderMyPictures = [System.Environment]::GetFolderPath('MyPictures')
        $folderMyVideos = [System.Environment]::GetFolderPath('MyVideos')

    # Scripts Blocks

        # Default
        [scriptblock]$ExitTerminalSession = {
            Clear-Host
            Start-Sleep -Milliseconds 500
            $host.SetShouldExit(0)
        }

        [scriptblock]$InvalidResponse = {
            Clear-Host

                Write-Host "" <#SPACE#>
            Write-Host "    Resposta inválida" -ForegroundColor Red
                Write-Host "" <#SPACE#>

            Set-Location $HOME
        }

        # Make Dir
        [scriptblock]$make_dirDocs = {
            New-Item (Join-Path -Path "$folderMyDocuments" -ChildPath "FileOrganizer") -ItemType Directory -Force
        }

        [scriptblock]$make_dirPics = {
            New-Item (Join-Path -Path "$folderMyPictures" -ChildPath "FileOrganizer") -ItemType Directory -Force
        }

        [scriptblock]$make_dirVids = {
            New-Item (Join-Path -Path "$folderMyVideos" -ChildPath "FileOrganizer") -ItemType Directory -Force
        }

        # Check dir 'Media'
        if (-not (Test-Path "Media" -ErrorAction SilentlyContinue)) {New-Item "Media" -ItemType Directory -Force}

        # Make: User Folders

            if (-not (Test-Path (Join-Path -Path "$folderMyDocuments" -ChildPath "FileOrganizer") -ErrorAction SilentlyContinue)) {& $make_dirDocs}

            if (-not (Test-Path (Join-Path -Path "$folderMyPictures" -ChildPath "FileOrganizer") -ErrorAction SilentlyContinue)) {& $make_dirPics}

            if (-not (Test-Path (Join-Path -Path "$folderMyVideos" -ChildPath "FileOrganizer") -ErrorAction SilentlyContinue)) {& $make_dirVids}

# Menu
Clear-Host

        Write-Host "" <#SPACE#>
    Write-Host "                FileOrganizer"
        Write-Host "" <#SPACE#>

        Start-Sleep -Seconds 1

        Write-Host "" <#SPACE#>
    Write-Host "    Deseja iniciar a organização agora?"
        Write-Host "" <#SPACE#>
        Start-Sleep -Seconds 1
    Write-Host "        [S] Sim / [N] Não"
        Write-Host "" <#SPACE#>

    $questStart_FileOrganizer = Read-Host

        switch ($questStart_FileOrganizer) {

            "S" {& ".\Config\Scripts\MoveItems.ps1"}
            "N" {& $ExitTerminalSession}

            Default {& $InvalidResponse}
        }