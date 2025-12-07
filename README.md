# Tor Browser Auto Installer

A simple bash script to automatically download and install the latest version of Tor Browser on Linux systems.

## Features

- Automatically detects the latest Tor Browser version
- Downloads and installs Tor Browser to `/opt/tor-browser`
- Creates a system-wide symlink for easy launching
- Adds desktop entry for application menu integration
- Clean and silent installation process

## Requirements

- Linux system (Ubuntu, Debian, Fedora, Arch, etc.)
- `sudo` or root privileges
- `curl` and `wget` installed
- Internet connection

## Installation

### Method 1: Git Clone (Recommended)

```bash
git clone https://github.com/YOURUSERNAME/tor-installer.git
cd tor-installer
chmod +x install.sh
./install.sh
```

### Method 2: Direct Download

```bash
curl -O https://raw.githubusercontent.com/YOURUSERNAME/tor-installer/main/install.sh
chmod +x install.sh
./install.sh
```

## Usage

After installation, you can launch Tor Browser using any of the following methods:

1. **Command Line**: `tor-browser`
2. **Application Menu**: Look for "Tor Browser" in your applications
3. **Desktop Entry**: Click the Tor Browser icon if created

## What the Script Does

1. **Detects Latest Version**: Fetches the latest Tor Browser version from Tor Project's official repository
2. **Downloads**: Downloads the appropriate Linux x86_64 package
3. **Extracts**: Extracts the browser to `/opt/tor-browser/`
4. **Creates Symlink**: Adds a `tor-browser` command to `/usr/bin/`
5. **Desktop Integration**: Creates a `.desktop` entry for application menu access

## Installation Location

- **Main Directory**: `/opt/tor-browser/`
- **Executable Symlink**: `/usr/bin/tor-browser`
- **Desktop Entry**: `/usr/share/applications/tor-browser.desktop`

## Uninstallation

To completely remove Tor Browser:

```bash
sudo rm -rf /opt/tor-browser
sudo rm -f /usr/bin/tor-browser
sudo rm -f /usr/share/applications/tor-browser.desktop
```

## Troubleshooting

### Permission Denied
Make sure the script has execute permissions:
```bash
chmod +x install.sh
```

### Network Issues
If you encounter network issues, ensure:
- You have an active internet connection
- Firewall allows downloads from `torproject.org`
- `curl` and `wget` are properly installed

### Architecture Support
This script is designed for 64-bit Linux systems (x86_64). For other architectures, manual installation may be required.

## Security Notes

- This script downloads files directly from the official Tor Project website
- Always verify the integrity of downloaded files
- Consider using GPG verification for production environments

## Contributing

Feel free to submit issues, feature requests, or pull requests to improve this installer.

## License

This project is open source. Feel free to modify and distribute according to your needs.

## Author

- **Script**: Tor Browser Auto Installer
- **Repository**: https://github.com/YOURUSERNAME/tor-installer
- **Official Tor Project**: https://www.torproject.org/

---

**Disclaimer**: This script is not officially affiliated with the Tor Project. Always download software from official sources and verify authenticity.
