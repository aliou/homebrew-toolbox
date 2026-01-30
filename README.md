# homebrew-toolbox

Homebrew tap for [aliou/toolbox](https://github.com/aliou/toolbox) CLI tools.

## Usage

```sh
brew tap aliou/toolbox
brew install voice-memos
brew install transcribe-audio
```

## Available formulas

| Formula            | Description                                  | Platforms      |
| ------------------ | -------------------------------------------- | -------------- |
| `voice-memos`      | Browse and export Apple Voice Memos          | macOS          |
| `transcribe-audio` | Transcribe audio files using whisper.cpp     | macOS, Linux   |

## How it works

Formulas are auto-updated by the [toolbox release workflow](https://github.com/aliou/toolbox/blob/main/.github/workflows/release.yml). Each release builds platform binaries, computes SHA256 hashes, and pushes updated formulas to this repo.
