#!/usr/env/bin bash
# install.sh - installs pywal-to-glance.sh from bash-scripts repo

echo "Installing pywal-to-glance.sh..."
curl -sLO https://raw.githubusercontent.com/0lswitcher/bash-scripts/refs/heads/main/scripts/pywal-glance-theme.sh

echo "Updating execution permissions..."
chmod +x ./pywal-glance-theme.sh

echo "Moving script to /usr/local/bin..."
echo "Feel free to relocate!"
mv ./pywal-glance-theme.sh /usr/local/bin/

echo "Installation complete!"
