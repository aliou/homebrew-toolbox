# homebrew-toolbox

Homebrew tap for CLI tools.

## Usage

```sh
brew tap aliou/toolbox
brew install linear-cli
brew install fastmail-cli
brew install voice-memos
brew install transcribe-audio
brew install sesame
brew install aliou/toolbox/pmd
brew install obsdx
```

## Available formulas

| Formula            | Description                                      | Platforms                |
| ------------------ | ------------------------------------------------ | ------------------------ |
| [`linear-cli`](https://github.com/aliou/linear-cli)       | CLI for Linear via GraphQL API                   | macOS arm64              |
| [`fastmail-cli`](https://github.com/aliou/fastmail-cli)   | CLI for FastMail via JMAP                        | macOS arm64              |
| `voice-memos`                                             | Browse and export Apple Voice Memos              | macOS                    |
| `transcribe-audio`                                        | Transcribe audio files using whisper.cpp         | macOS, Linux             |
| [`sesame`](https://github.com/aliou/sesame)               | BM25 search for coding agent sessions            | macOS arm64, Linux       |
| [`pmd`](https://github.com/aliou/preview-markdown)        | Terminal markdown pager with syntax highlighting | macOS arm64, Linux arm64 |
| [`obsdx`](https://github.com/aliou/obsdx)                 | Headless Obsidian vault intelligence CLI         | macOS arm64, Linux arm64 |

## How it works

Formulas install pre-built binaries from each tool's GitHub Releases. Release workflows compute SHA256 hashes and dispatch updates to this repo when automation is configured.

Requires a `TAP_GITHUB_TOKEN` secret (PAT with write access to this repo) in each CLI repo that updates the tap automatically.
