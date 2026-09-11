# Changelog

## [1.0.4] 11-09-2026

### Changed
- Mudanças nas estruturas dos scripts `.ps1`.
    - Todas as orientações de diretórios foram modificada para uma forma mais segura sem ter que depender de barras. `/`

        Antes:
        ```powershell
        Set-Location "Config\Main"
        ```

        Depois:
        ```powershell
        Set-Location (Join-Path -Path "Config" -ChildPath "Main")
        ```

        Isso é só um exemplo.