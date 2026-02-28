<div align="center">
  <img src="/assets/logo.svg" width="100" />

  <h1 align="center">Homebrew Tap</h1>

[Website](https://omni.dev) | [Docs](https://docs.omni.dev) | [Discord](https://discord.gg/omnidotdev) | [X](https://x.com/omnidotdev)

</div>

Official [Homebrew](https://brew.sh) tap for [Omni](https://omni.dev) packages.

## Packages

| Package | Description | Install |
| --- | --- | --- |
| [Omni CLI](Formula/omni-cli.rb) | Agentic CLI for the Omni ecosystem | `brew install omnidotdev/tap/omni-cli` |
| [Omni Terminal](Casks/omni-terminal.rb) | GPU-accelerated terminal emulator built to run everywhere | `brew install --cask omnidotdev/tap/omni-terminal` |

## Usage

### Add the tap

```bash
brew tap omnidotdev/tap
```

### Install a package

```bash
# Omni CLI
brew install omnidotdev/tap/omni-cli

# Omni Terminal
brew install --cask omnidotdev/tap/omni-terminal
```

### Update

```bash
brew update
brew upgrade omnidotdev/tap/omni-cli
brew upgrade --cask omnidotdev/tap/omni-terminal
```

## License

The code in this repository is licensed under MIT, &copy; [Omni LLC](https://omni.dev). See [LICENSE.md](LICENSE.md) for more information.
