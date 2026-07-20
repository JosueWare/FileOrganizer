# Logon

    <#--[VAR]--#>

        $current_MyDocuments = "$folderMyDocuments\FileOrganizer"

        $current_MyPictures = "$folderMyPictures\FileOrganizer"

        $current_MyVideos = "$folderMyVideos\FileOrganizer"

    <#--[Functions]--#>

        # Retornar

            function R {& ".\Config\Navigation\main.ps1"}

# Begin

Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movendo.."
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    # Mover itens

        # Documentos

            Move-Item -Path "Source\*.txt" -Destination "$current_MyDocuments"

        # Imagens

            Move-Item -Path "Source\*.png" -Destination "$current_MyPictures"

            Move-Item -Path "Source\*.jpg" -Destination "$current_MyPictures" 

            Move-Item -Path "Source\*.jpeg" -Destination "$current_MyPictures"

        # Vídeos

            Move-Item -Path "Source\*.mp4" -Destination "$current_MyVideos"


# Fim

Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movidos!" -ForegroundColor Green
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    Write-Host "" <#SPACE#>
Write-Host "        Se quiser organizar novamente digite 'R' "
    Write-Host "" <#SPACE#>

Set-Location $HOME