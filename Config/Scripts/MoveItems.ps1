# ENV
$target_MyDocs
$target_MyPics
$target_MyVids
$target_MyMsc

# Init
Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movendo.."
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    # Move-Items

        # Documentos
        $listed_GenericDocuments = @("*.txt", "*.md")

        foreach ($list in $listed_GenericDocuments) {
            Move-Item -Path "Media\$list" -Destination $folderMyDocuments
        }

        # Imagens
        $listed_Pictures = @("*.png", "*.jpg", "*.jpeg", "*.gif", "*.bmp", "*.svg", "*.webp", "*.avif", "*.apng", "*.raw")

        foreach ($list in $listed_Pictures) {
            Move-Item -Path "Media\$list"
        }

        # Vídeos
        $listed_Videos = @("*.mp4", "*.mkv")

        foreach ($list in $listed_Videos) {
            Move-Item -Path "Media\$list"
        }


# END

Clear-Host

    Write-Host "" <#SPACE#>
Write-Host "    Movidos!" -ForegroundColor Green
    Write-Host "" <#SPACE#>

    Start-Sleep -Seconds 1

    Write-Host "" <#SPACE#>
Write-Host "        Se quiser organizar novamente digite 'R' "
    Write-Host "" <#SPACE#>

Set-Location $HOME