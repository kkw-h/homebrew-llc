# homebrew-llc

Homebrew tap for [llc](https://github.com/kkw-h/llc) - An enhanced `ls -l` command with file comments support.

## Installation

```bash
# Add the tap
brew tap kkw-h/llc

# Install llc
brew install llc

# Or install directly without adding tap
brew install kkw-h/llc/llc
```

## Upgrading

```bash
brew update
brew upgrade llc
```

## Uninstallation

```bash
brew uninstall llc
brew untap kkw-h/llc
```

## Formula

- **Name**: `llc`
- **Description**: Enhanced ls command with file comments support
- **Platforms**: macOS (Intel/Apple Silicon), Linux (AMD64/ARM64)
- **License**: MIT

## About llc

`llc` is a cross-platform enhanced version of `ls -l` that displays file comments at the end of each line:

- **macOS**: Uses Spotlight/Finder comments (xattr)
- **Linux**: Uses xattr extended attributes

### Quick Start

```bash
llc              # List current directory
llc -a           # Show all files
llc -h           # Human-readable sizes
llc -e file.txt "comment"  # Set file comment
```

For more information, visit: https://github.com/kkw-h/llc
