# BoThomas/homebrew-tap

Homebrew tap with casks for macOS apps by Thomas Boch.

## Packages

### now

[now](https://github.com/BoThomas/now) is a native menu bar app for meeting reminders. It requires
Apple Silicon and macOS 13 or later.

```
brew install --cask BoThomas/tap/now
```

The install removes the quarantine attribute, so the first launch is not blocked by Gatekeeper.
This differs from a manual download, which is signed but not notarized.

Updates:

```
brew upgrade --cask BoThomas/tap/now
```

If a previous manual copy exists at `/Applications/now.app`, remove it first or install with a
different `--appdir`.
