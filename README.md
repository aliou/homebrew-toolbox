# homebrew-toolbox

Homebrew tap for CLI tools.

## Usage

```sh
brew tap aliou/toolbox
brew install linear-cli
brew install fastmail-cli
brew install voice-memos
brew install transcribe-audio
```

## Available formulas

| Formula            | Description                                  | Platforms         |
| ------------------ | -------------------------------------------- | ----------------- |
| `linear-cli`       | CLI for Linear via GraphQL API               | macOS (ARM64)     |
| `fastmail-cli`     | CLI for FastMail via JMAP                    | macOS (ARM64)     |
| `voice-memos`      | Browse and export Apple Voice Memos          | macOS             |
| `transcribe-audio` | Transcribe audio files using whisper.cpp     | macOS, Linux      |

## How it works

Formulas are auto-updated via `repository_dispatch` events. Each CLI's release workflow computes the SHA256 hash of the macOS binary and dispatches an event to this repo, which creates a PR with the updated formula.

Requires a `TAP_GITHUB_TOKEN` secret (PAT with write access to this repo) in each CLI repo.
