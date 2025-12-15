# AWS Session URL Converter

This tool converts AWS session URLs from the clipboard into shareable URLs.

## How It Works

1. Copy an AWS session URL.
2. The tool detects and converts it.
3. The shareable URL replaces the clipboard content.

## installation

```bash
brew tap esharf/main
brew install en-he-replace
brew services start esharf/main/en-he-replace
```

## Automator Service

An Automator service (en<->he) is included in `resources/en<->he.workflow`.
To enable it, copy the workflow to your Services folder:

```bash
cp -R resources/en<->he.workflow ~/Library/Services/
```
After copying, the service will be available in the Services menu.
