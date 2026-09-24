# ENV
$target_MyDocs = Join-Path -Path $folderMyDocuments -ChildPath "FileOrganizer"
$target_MyPics = Join-Path -Path $folderMyPictures -ChildPath "FileOrganizer"
$target_MyVids = Join-Path -Path $folderMyVideos -ChildPath "FileOrganizer"
$target_MyMsc = Join-Path -Path $folderMyMusics -ChildPath "FileOrganizer"

# Init
Clear-Host

    Write-Host "" <##>
Write-Host "    Movendo.."
    Write-Host "" <##>

    Start-Sleep -Seconds 1

    # Move-Items

        # Documentos
        $listed_GenericDocuments = @("*.txt", "*.md")

        foreach ($list in $listed_GenericDocuments) {
            Move-Item -Path "Media\$list" -Destination $target_MyDocs
        }

        # Imagens
        $listed_Pictures = @("*.png", "*.jpg", "*.jpeg", "*.gif", "*.bmp", "*.svg", "*.webp", "*.avif", "*.apng", "*.raw")

        foreach ($list in $listed_Pictures) {
            Move-Item -Path "Media\$list" -Destination $target_MyPics
        }

        # Vídeos
        $listed_Videos = @("*.mp4", "*.mkv")

        foreach ($list in $listed_Videos) {
            Move-Item -Path "Media\$list" -Destination $target_MyVids
        }


# END

Clear-Host

    Write-Host "" <##>
Write-Host "    Movidos!" -ForegroundColor Green
    Write-Host "" <##>

    Start-Sleep -Seconds 1

    Write-Host "" <##>
Write-Host "        Se quiser organizar novamente digite 'R' "
    Write-Host "" <##>

Set-Location $HOME