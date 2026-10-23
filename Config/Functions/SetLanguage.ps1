# Select Language
if (Get-Command "Get-Culture" -ErrorAction SilentlyContinue) {
    $currentLanguage = (Get-Culture).Name
}
else {
    $currentLanguage = "en-US"
}