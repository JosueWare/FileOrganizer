# Changelog

## 1.0.6-beta
18-09-2026

### Changed
- Mudanças nas estruturas dos scripts `.ps1`.
  Todas as orientações de diretórios foram modificada para uma forma mais segura sem ter que depender de barras. `/`

  Antes:
  ```powershell
      Set-Location "Config\Main"
  ```

  Depois:
  ```powershell
  Set-Location (Join-Path -Path "Config" -ChildPath "Main")
  ```

- O arquivo "`Move.ps1`" foi nomeado para "`MoveItems.ps1`"