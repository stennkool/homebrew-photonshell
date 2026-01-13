# Contributing to PhotonShell Homebrew Tap

Thank you for your interest in contributing to the PhotonShell Homebrew Tap! This guide will help you understand how to contribute effectively.

## Types of Contributions

We welcome several types of contributions:

1. **Bug Reports**: Help us identify and fix issues
2. **Feature Requests**: Suggest new features or improvements
3. **Documentation Improvements**: Help improve our documentation
4. **Code Contributions**: Submit pull requests for bug fixes or features

## Getting Started

### Prerequisites

- Basic knowledge of Homebrew and Cask formulas
- Git and GitHub account
- Homebrew installed on your macOS system

### Setting Up Your Environment

```bash
# Fork the repository
# Clone your fork
git clone https://github.com/your-username/photonshell.git
cd photonshell

# Add the upstream repository
git remote add upstream https://github.com/stennkool/photonshell.git
```

## Contribution Guidelines

### Reporting Bugs

When reporting bugs, please include:

- **PhotonShell version** (run `photonshell --version`)
- **macOS version** (run `sw_vers`)
- **Homebrew version** (run `brew --version`)
- **Steps to reproduce** the issue
- **Expected behavior** vs **actual behavior**
- **Relevant logs** (if applicable)

### Suggesting Features

For feature requests, please provide:

- **Detailed description** of the proposed feature
- **Use case** and why it would be beneficial
- **Potential implementation** ideas (if you have any)

### Submitting Pull Requests

1. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following our coding standards

3. **Test your changes** thoroughly

4. **Commit your changes** with a clear, descriptive message:
   ```bash
   git commit -m "Add feature: your feature description"
   ```

5. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Create a Pull Request** from your fork to the main repository

## Coding Standards

### Cask Formula Guidelines

- Follow Homebrew's [Cask Documentation](https://docs.brew.sh/Cask-Cookbook)
- Use consistent indentation (2 spaces)
- Include proper versioning and SHA256 checksums
- Add appropriate dependencies
- Include comprehensive `zap` instructions for cleanup

### Documentation Standards

- Use clear, concise language
- Follow Markdown formatting best practices
- Include code examples where helpful
- Keep documentation up-to-date with code changes

## Testing

### Testing Cask Changes

```bash
# Test installation
brew install --cask photonshell

# Test uninstallation
brew uninstall --cask photonshell

# Test zap functionality
brew zap photonshell
```

### Testing Documentation

- Read through your changes for clarity
- Check for spelling and grammar errors
- Ensure all links work correctly
- Verify code examples are accurate

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). We expect all contributors to:

- Be respectful and inclusive
- Provide constructive feedback
- Maintain a positive and welcoming environment
- Follow GitHub's Community Guidelines

## Getting Help

If you need help with contributing:

- Check our [documentation](https://www.photonshell.com/docs)
- Ask questions in our [GitHub Discussions](https://github.com/stennkool/photonshell/discussions)
- Join our [Community Discord](https://discord.gg/photonshell)

## Recognition

We appreciate all contributions! Contributors who make significant impacts may be:

- Added to our contributors list
- Featured in release notes
- Given special recognition on our website

Thank you for helping make PhotonShell better!