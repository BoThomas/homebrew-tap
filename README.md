# BoThomas/homebrew-tap

Homebrew tap for [now](https://github.com/BoThomas/now), a native macOS menu bar app for meeting
reminders.

## Install

```
brew install --cask BoThomas/tap/now
```

The install removes the quarantine attribute, so the first launch is not blocked by Gatekeeper.
This differs from a manual download, which is signed but not notarized.

## Update

```
brew upgrade --cask BoThomas/tap/now
```

The cask is updated with every release of now.

## Notes

- Apple Silicon, macOS 13 or later.
- If a previous manual copy exists at `/Applications/now.app`, remove it first or install with a
  different `--appdir`.
