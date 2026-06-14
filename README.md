# shotahirao/db-fire Homebrew Tap

A Homebrew tap for [db-fire](https://github.com/shotahirao/db-fire), a fast, lightweight, cross-platform database client built with Tauri.

## Installation

```bash
brew tap shotahirao/db-fire
brew install --cask db-fire
```

Or in one command:

```bash
brew install --cask shotahirao/db-fire/db-fire
```

## Note

db-fire is currently not signed with an Apple Developer ID. On macOS, you may need to remove the quarantine attribute after installation:

```bash
sudo xattr -d com.apple.quarantine /Applications/db-fire.app
```

## Updates

This cask is marked as `auto_updates true` because db-fire includes a built-in updater. You can also run:

```bash
brew upgrade --greedy db-fire
```
