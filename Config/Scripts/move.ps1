# Logon

    # ENV
    $current_MyDocuments = "$folderMyDocuments\FileOrganizer"
    $current_MyPictures = "$folderMyPictures\FileOrganizer"
    $current_MyVideos = "$folderMyVideos\FileOrganizer"

# Init
Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movendo.."
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    # Mover itens

        # Documentos

            Move-Item -Path "Media\*.txt" -Destination $current_MyDocuments

        # Imagens

            Move-Item -Path "Media\*.png" -Destination $current_MyPictures

            Move-Item -Path "Media\*.jpg" -Destination $current_MyPictures

            Move-Item -Path "Media\*.jpeg" -Destination $current_MyPictures

        # Vídeos

            Move-Item -Path "Media\*.mp4" -Destination $current_MyVideos


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