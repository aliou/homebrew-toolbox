# homebrew-toolbox

Homebrew tap for CLI tools by [aliou](https://github.com/aliou).

## Structure

- `Formula/*.rb` — Homebrew formula files, one per tool
- Formulas download pre-built binaries from GitHub Releases

## Automation

Formula updates are triggered via `repository_dispatch` events from each CLI's release workflow.
The `update-formula.yml` workflow receives the formula name, version, repo, and SHA256 hash,
updates the formula file, and creates a PR.

Requires a `TAP_GITHUB_TOKEN` secret (PAT with write access to this repo) in each source repo.

## Formula conventions

- Class name: PascalCase of binary name (e.g., `linear-cli` -> `LinearCli`)
- Version and SHA256 hashes come from release binaries
- macOS ARM64 only for Bun-compiled CLIs (no darwin-x64 builds)
- `depends_on :macos` and `depends_on arch: :arm64` for ARM-only formulas
- `depends_on` for runtime deps (e.g., ffmpeg, whisper-cpp for transcribe-audio)
