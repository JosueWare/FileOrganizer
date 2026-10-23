if (((Get-ChildItem -Path "Logs").Count) -gt "3") {
    Remove-Item -Path "Logs/*.log" -Recurse -ErrorAction SilentlyContinue
}