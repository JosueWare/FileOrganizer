# ADMIN Status
$runnigAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

# CheckOS
if ($env:OS -eq "Windows_NT") {
    # Check PS Edition
    if ($PSVersionTable.PSEdition -eq "Core") {
        #Check ADMIN
        if ($runnigAdmin) {
            & (Join-Path -Path $PSScriptRoot -ChildPath @("Config", "Main", "Menu.ps1"))
        }
            else {
                Write-Host "FileOrganizer requer que você execute como administrador" -ForegroundColor Yellow
            }
    }
        else {
            Write-Host "FileOrganizer nao e suportado para o Windows PowerShell 5.1" -ForegroundColor Red
        }
}
    else {
        Write-Host "FileOrganizer foi feito para usar no Windows" -ForegroundColor Red
    }