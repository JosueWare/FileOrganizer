$isAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (($PSVersionTable.PSEdition) -eq "Core") {
    if ($isAdmin) {
        & "Config/Start.ps1"
    }
    else {}
}
else {}