if (((Get-ChildItem -Path "Logs").Count) -eq "3") {
    Remove-Item -Path "Logs/*.log" -Recurse -ErrorAction SilentlyContinue
}