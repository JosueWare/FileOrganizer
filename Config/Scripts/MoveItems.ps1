# Logon

    # ENV
    $current_MyDocuments = (Join-Path -Path "$folderMyDocuments" -ChildPath "FileOrganizer")
    $current_MyPictures = (Join-Path -Path "$folderMyPictures" -ChildPath "FileOrganizer")
    $current_MyVideos = (Join-Path -Path "$folderMyVideos" -ChildPath "FileOrganizer")

# Init
Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movendo.."
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    # Mover itens

        # Documentos

            Move-Item -Path "Media\*.txt" -Destination $current_MyDocuments <# .txt #>

        # Imagens

            Move-Item -Path "Media\*.png" -Destination $current_MyPictures <# .png #>

            Move-Item -Path "Media\*.jpg" -Destination $current_MyPictures <# .jpg #>

            Move-Item -Path "Media\*.jpeg" -Destination $current_MyPictures <# .jpeg #>

            Move-Item -Path "Media\*.gif" -Destination $current_MyPictures <# .gif #>

            Move-Item -Path "Media\*.bmp" -Destination $current_MyPictures <# .bmp #>

            Move-Item -Path "Media\*.svg" -Destination $current_MyPictures <# .svg #>

            Move-Item -Path "Media\*.webp" -Destination $current_MyPictures <# .webp #>

            Move-Item -Path "Media\*.avif" -Destination $current_MyPictures <# .avif #>

            Move-Item -Path "Media\*.apng" -Destination $current_MyPictures <# .apng #>

            Move-Item -Path "Media\*.raw" -Destination $current_MyPictures <# .raw #>

        # Vídeos

            Move-Item -Path "Media\*.mp4" -Destination $current_MyVideos <# .mp4 #>


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