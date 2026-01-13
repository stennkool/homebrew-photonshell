# Changelog

All notable changes to the PhotonShell Homebrew Tap will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Comprehensive README.md with installation, troubleshooting, and uninstallation instructions
- Livecheck block to Cask formula for automatic updates
- CONTRIBUTING.md with contribution guidelines
- LICENSE file (MIT License)
- CHANGELOG.md for tracking changes

### Changed
- Enhanced project documentation and structure
- Improved user experience with detailed instructions

## [0.0.1-a17] - 2023-11-15

### Added
- Initial Homebrew Cask formula for PhotonShell
- Basic installation instructions
- Automatic updates support via `auto_updates true`
- Comprehensive zap instructions for clean uninstallation

### Fixed
- Initial release - no fixes yet

## [0.0.1-a16] - 2023-10-30

### Added
- Pre-release version for testing
- Basic macOS Ventura support
- ARM64 architecture support

## Changelog Guidelines

### Types of Changes

- **Added**: New features
- **Changed**: Changes in existing functionality
- **Deprecated**: Soon-to-be removed features
- **Removed**: Features that have been removed
- **Fixed**: Bug fixes
- **Security**: Vulnerability fixes

### Version Format

Versions follow the format: `MAJOR.MINOR.PATCH-RELEASE`
- `MAJOR`: Breaking changes
- `MINOR`: Backwards-compatible new features
- `PATCH`: Backwards-compatible bug fixes
- `RELEASE`: Pre-release identifiers (a = alpha, b = beta, rc = release candidate)

### Contributing to the Changelog

When making changes to the project:

1. Add your changes under the `[Unreleased]` section
2. Use the appropriate category (Added, Changed, Fixed, etc.)
3. Keep descriptions clear and concise
4. Reference relevant issues or pull requests when possible

Example:
```markdown
## [Unreleased]

### Added
- New feature description (#123)

### Fixed
- Bug fix description that resolves issue (#456)
```

## Release Process

1. Update version number in Cask formula
2. Update SHA256 checksum
3. Move changes from `[Unreleased]` to new version section
4. Add release date
5. Create GitHub release with release notes
6. Update Homebrew tap repository