#!/bin/bash
if ! command -v pipx &> /dev/null; then
    echo "pipx is not installed. Installing pipx..."
    sudo apt install -y pipx
    echo "pipx installed successfully."
    pipx ensurepath    
    echo "Please restart your terminal or run 'source ~/.profile' to update your PATH."
    echo "You can now use pipx to install Python applications in isolated environments."
else
    echo "pipx is already installed."
fi
