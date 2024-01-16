. C:\Users\polcg\.local\share\chezmoi\home\dot_local\scripts\windows_functions.ps1

# RUN AFTER REBOOT
# type python in powershell and it will ask you to install it
pip3 install pipenv
# Install git-aliases module
Install-Module git-aliases -Scope CurrentUser -AllowClobber
emacs_install
vim_install
clone

