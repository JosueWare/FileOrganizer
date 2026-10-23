if (((Get-ChildItem -Path "Logs").Count) -gt "10") {
    Remove-Item -Path "Logs/*.log" -Recurse -ErrorAction SilentlyContinue
}