#!/bin/bash
set -e

# Tor Browser Auto Installer Script
# Author: Your Name
# Repo: https://github.com/YOURUSERNAME/tor-installer

INSTALL_DIR="/opt/tor-browser"

echo ">>> Fetching latest Tor Browser version..."

# Get latest version number from Tor Project
LATEST_VERSION=$(curl -s https://www.torproject.org/dist/torbrowser/ | \
                 grep -oP 'href="\K[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -1)

TOR_FILE="tor-browser-linux-x86_64-${LATEST_VERSION}.tar.xz"
TOR_URL="https://www.torproject.org/dist/torbrowser/${LATEST_VERSION}/${TOR_FILE}"

echo ">>> Latest version detected: ${LATEST_VERSION}"
echo ">>> Downloading Tor Browser..."

wget -q --show-progress $TOR_URL -O /tmp/$TOR_FILE

echo ">>> Extracting..."
sudo tar -xvf /tmp/$TOR_FILE -C /opt/
sudo mv /opt/tor-browser* $INSTALL_DIR

# Symlink for easy launch
sudo ln -sf $INSTALL_DIR/start-tor-browser.desktop /usr/bin/tor-browser

# Desktop entry
cat <<EOF | sudo tee /usr/share/applications/tor-browser.desktop > /dev/null
[Desktop Entry]
Name=Tor Browser
Exec=$INSTALL_DIR/start-tor-browser.desktop
Icon=$INSTALL_DIR/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
EOF

echo ">>> Tor Browser ${LATEST_VERSION} installed successfully!"
echo "Run it with: tor-browser"
