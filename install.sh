#!/usr/bin/env bash
# install.sh - installs pywal-to-glance.sh from bash-scripts repo

echo "Installing pywal-to-glance.sh..."
curl -sLO https://raw.githubusercontent.com/0lswitcher/bash-scripts/refs/heads/main/scripts/pywal-to-glance.sh

echo "Updating execution permissions..."
chmod +x ./pywal-to-glance.sh

echo "Moving script to ~/.local/bin..."
echo "Feel free to relocate!"
mkdir -p ~/.local/bin && mv ./pywal-to-glance.sh ~/.local/bin/

echo "Installation complete!"
