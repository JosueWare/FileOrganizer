# Logon

Set-Location "$PSScriptRoot\..\..\"

    <#--VAR--[INI]#>

        # System Folders

            $folderMyDocuments = [System.Environment]::GetFolderPath('MyDocuments')
            $folderMyPictures = [System.Environment]::GetFolderPath('MyPictures')
            $folderMyVideos = [System.Environment]::GetFolderPath('MyVideos')

    <#--VAR--[END]#>

    <#--ScriptsBlocks--[INI]#>

        # Default

            $ExitTerminalSession = {

                Clear-Host

                    Start-Sleep -Seconds 1

                Stop-Process -Id $PID
            }

            $InvalidResponse = {

                Clear-Host

                    Write-Host "" <#SPACE#>
                Write-Host "    Resposta inválida" -ForegroundColor Red
                    Write-Host "" <#SPACE#>

                    Start-Sleep -Seconds 2

                Stop-Process -Id $PID
            }

        # Make Dir

            [scriptblock]$make_dirDocs = {

                New-Item -Path "$folderMyDocuments\FileOrganizer" -ItemType Directory -Force
            }

            [scriptblock]$make_dirPics = {

                New-Item -Path "$folderMyPictures\FileOrganizer" -ItemType Directory -Force
            }

            [scriptblock]$make_dirVids = {

                New-Item -Path "$folderMyVideos\FileOrganizer" -ItemType Directory -Force
            }

    <#--ScriptsBlocks--[END]#>

# Init

    <#--CHECK--[INI]#>

        if (-not (Test-Path "Source" -ErrorAction SilentlyContinue)) {New-Item "Source" -ItemType Directory -Force}

        # Make: User Folders

            if (-not (Test-Path -Path "$folderMyDocuments\FileOrganizer" -ErrorAction SilentlyContinue)) {& $make_dirDocs}

            if (-not (Test-Path -Path "$folderMyPictures\FileOrganizer" -ErrorAction SilentlyContinue)) {& $make_dirPics}

            if (-not (Test-Path -Path "$folderMyVideos\FileOrganizer" -ErrorAction SilentlyContinue)) {& $make_dirVids}

    <#--CHECK--[END]#>

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

            "S" {& ".\Config\Scripts\move.ps1"}
            "N" {& $ExitTerminalSession}

            Default {& $InvalidResponse}
        }