# ![Windows][windows 10 icon] Windows 10 dotfiles

## Installation
[Set execution policy](https://superuser.com/questions/106360/how-to-enable-execution-of-powershell-scripts)
[Dubious ownership](https://stackoverflow.com/questions/73485958/how-to-correct-git-reporting-detected-dubious-ownership-in-repository-withou)
```
Set-ExecutionPolicy unrestricted
git clone https://github.com/cuberhaus/WinDotfiles.git
cd WinDotfiles
git config --global safe.directory '*'
.\bin\windows.ps1
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
