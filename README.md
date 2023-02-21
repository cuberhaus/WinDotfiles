# ![Windows][windows 10 icon] Windows 10 dotfiles

## Installation
```
git clone https://github.com/cuberhaus/WinDotfiles.git
.\WinDotfiles\bin\windows.ps1
```

## Commands
To check available commands type:
```
aliases
```

## Chocolatey

### Upgrade packages

```
choco upgrade all
```

### List packages

```
choco list --local-only
```

## PowerShell

PowerShell profile location:
-   Powershell 5
    **Location:** C:\Users\polcg\Documents\WindowsPowerShell
-   Powershell 7
    **Location:** C:\Users\polcg\Documents\PowerShell

## Tasks

To add a task at login, use task scheduler

### User
If user and computer name are different you will have to change that in the task scheduler through the GUI
> tip: do not use the GUI

[windows 10 icon]: https://i.imgur.com/b3co2Zl.png
