# ![Windows][windows 10 icon] Windows 11 dotfiles

## Introduction

Dotfiles are configuration files that are used to customize the behavior of various command-line tools and applications. They are commonly used by developers and power users to streamline their workflow and make their environment more efficient. This guide provides instructions for installing and using dotfiles on Windows 11.

## Table of Contents

- Installation
- Commands
- Chocolatey
- PowerShell
- Customization
- Troubleshooting
- Resources

## Installation

> Tip: You are advised to execute this from windows powershell app and not from windows Terminal app <br>
[Set execution policy](https://superuser.com/questions/106360/how-to-enable-execution-of-powershell-scripts) <br>
[Dubious ownership](https://stackoverflow.com/questions/73485958/how-to-correct-git-reporting-detected-dubious-ownership-in-repository-withou)

### Installation (One-liner)

```
Set-ExecutionPolicy unrestricted
sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init https://github.com/cuberhaus/WinDotfiles.git
chezmoi apply
cd .local\share\chezmoi
git config --global safe.directory '*'
.\bin\windows.ps1
```

To install the dotfiles on Windows 11, follow these steps:

1. Set the execution policy in PowerShell by running the following command:

```powershell
Set-ExecutionPolicy unrestricted
```
This allows you to run scripts on your system.

2. Clone the dotfiles repository by following chezmoi installation

3. Configure Git to ignore file ownership by running the following command:

```powershell
git config --global safe.directory '*'
```
This prevents Git from detecting "dubious ownership" issues when you commit changes to the repository.

4. Run the installation script by running the following command:
```powershell
.\bin\windows.ps1
```
This installs the dotfiles and their associated dependencies on your system.

## Manage WinDotfiles repository with Chezmoi

1. **Install Chezmoi**

You can install Chezmoi by running the following command in PowerShell:

```powershell
sh -c "$(curl -fsLS get.chezmoi.io)"
```

This downloads and installs Chezmoi on your system.

2. **Initialize Chezmoi**

Run the following command to initialize Chezmoi:

```powershell
chezmoi init https://github.com/cuberhaus/WinDotfiles.git
```

This initializes Chezmoi with the WinDotfiles repository.

3. **Apply dotfiles**

To apply the dotfiles, run the following command:
```powershell
chezmoi apply
```


This applies the dotfiles to your system.

4. **Customize dotfiles**

You can customize the dotfiles by editing the files in the `~/.local/share/chezmoi` directory. Changes you make will be tracked by Chezmoi and can be pushed to the WinDotfiles repository.

Chezmoi supports several source state attributes that can be used to customize how files are managed. You can learn more about these attributes in the [Chezmoi reference](https://www.chezmoi.io/reference/source-state-attributes/).

5. **Commit and push changes**

When you have made changes to the dotfiles, you can commit and push them to the WinDotfiles repository using the following commands:

```powershell
chezmoi git add <file>
chezmoi git commit -m "Updated dotfile"
chezmoi git push
```

This commits and pushes your changes to the WinDotfiles repository.

6. **Upgrade Chezmoi**

To upgrade Chezmoi to the latest version, run the following command:

```powershell
chezmoi upgrade
```

This downloads and installs the latest version of Chezmoi on your system.

## Commands

To view a list of available commands, run the following command:

```
aliases
```

## Chocolatey

Chocolatey is a package manager for Windows that is used to install and manage software packages. To use Chocolatey with the dotfiles, follow these steps:

### Upgrade packages

To upgrade all installed packages, run the following command:

```
choco upgrade all
```

This updates all packages to their latest versions.

### List packages

To list all locally installed packages, run the following command:

```
choco list --local-only
```

This displays a list of all packages that are currently installed on your system.

## PowerShell

PowerShell is a command-line shell and scripting language that is used to automate tasks and manage system configurations. To customize your PowerShell environment with the dotfiles, follow these steps:

1. Locate your PowerShell profile directory by running the following command:

```powershell
$PROFILE | Format-List -Force
```
This displays the location of your PowerShell profile directory.

## Tasks

To add a task at login, use task scheduler

### User

If user and computer name are different you will have to change that in the task scheduler through the GUI
> tip: do not use the GUI

[windows 10 icon]: https://i.imgur.com/b3co2Zl.png
