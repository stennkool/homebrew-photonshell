# PhotonShell - Next-Generation AI-Powered Terminal Emulator

PhotonShell is a cutting-edge terminal emulator that leverages artificial intelligence to enhance your command-line experience. It provides advanced features like intelligent command suggestions, context-aware completions, and seamless integration with modern development workflows.

## Features

- **AI-Powered Command Assistance**: Get intelligent suggestions and completions as you type
- **Modern UI**: Beautiful, customizable interface with themes and layouts
- **Cross-Platform**: Works seamlessly across macOS (with Windows and Linux support coming soon)
- **Performance Optimized**: Built for speed and efficiency
- **Extensible Architecture**: Plugin system for custom functionality

## System Requirements

- **macOS**: Ventura (13.0) or later
- **Architecture**: Apple Silicon (ARM64) or Intel (x86_64)
- **Disk Space**: Minimum 50MB for installation
- **Memory**: 4GB RAM recommended

## Installation

### Via Homebrew Cask

```bash
# Tap the PhotonShell repository
brew tap stennkool/photonshell

# Install PhotonShell
brew install --cask photonshell
```

### Manual Installation

1. Download the latest `.dmg` file from [PhotonShell Releases](https://www.photonshell.com/releases/)
2. Open the downloaded `.dmg` file
3. Drag PhotonShell.app to your Applications folder
4. Launch PhotonShell from your Applications folder or Spotlight

## Troubleshooting

### Common Issues and Solutions

#### Installation Problems

**Issue**: `brew install` fails with network errors
- **Solution**: Ensure you have a stable internet connection and try again
- **Solution**: Run `brew update` to update Homebrew and try again

**Issue**: PhotonShell won't launch after installation
- **Solution**: Check macOS Gatekeeper settings: `System Preferences > Security & Privacy`
- **Solution**: Try right-clicking the app and selecting "Open"
- **Solution**: Run `xattr -cr /Applications/photonshell.app` to clear extended attributes

#### Runtime Issues

**Issue**: AI suggestions not working
- **Solution**: Check your internet connection (AI features require online access)
- **Solution**: Ensure you're using the latest version
- **Solution**: Restart PhotonShell

**Issue**: Performance is slow
- **Solution**: Close other memory-intensive applications
- **Solution**: Check Activity Monitor for resource usage
- **Solution**: Restart your computer

### Getting Help

If you encounter issues not covered here:
- Check the [PhotonShell Documentation](https://www.photonshell.com/docs)
- Visit our [GitHub Issues](https://github.com/stennkool/photonshell/issues)
- Join our [Community Discord](https://discord.gg/photonshell)

## Uninstallation

### Via Homebrew

```bash
# Uninstall PhotonShell
brew uninstall --cask photonshell

# Remove the tap (optional)
brew untap stennkool/photonshell
```

### Manual Uninstallation

1. Delete the application:
   ```bash
   rm -rf /Applications/photonshell.app
   ```

2. Remove configuration and cache files:
   ```bash
   # Remove all related files
   rm -rf "~/Library/Application Support/photonshell"
   rm -rf "~/Library/Preferences/nl.stennmedia.photonshell.plist"
   rm -rf "~/Library/Caches/nl.stennmedia.photonshell"
   rm -rf "~/Library/Logs/PhotonShell"
   rm -rf "~/.photonshell"
   ```

## Development

This repository is automatically updated by the release workflow in the main PhotonShell repository. For development contributions, please refer to the main repository.

## License

PhotonShell is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

- **Website**: [https://www.photonshell.com](https://www.photonshell.com)
- **GitHub**: [https://github.com/stennkool/photonshell](https://github.com/stennkool/photonshell)
- **Support**: support@photonshell.com

## Maintenance

This Homebrew tap is automatically updated by the release workflow in the main PhotonShell repository. Updates are pushed automatically when new versions are released.
