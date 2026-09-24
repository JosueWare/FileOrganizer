# Changelog

## 1.0.7x (Unreleased)
23-09-2026

### Changed
- Mudanças nas estruturas dos scripts `.ps1`.
  Todas as orientações de diretórios foram modificada para uma forma mais segura sem ter que depender de barras invertidas `\`

  Começando na primeira linha de código do arquivo `Menu.ps1`>

    Antes:
    ```powershell
    Set-Location "..\..\"
    ```

    Depois:
    ```powershell
    Set-Location (Join-Path -Path $PSScriptRoot -ChildPath @("..", ".."))
    ```

- O arquivo "`Move.ps1`" foi nomeado para "`MoveItems.ps1`"

- No arquivo script `MoveItems.ps1` foi usado o `foreach`