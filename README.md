# Elixcode Homebrew Tap

Homebrew formulae for the ElixCode platform CLIs:
- `elixcode` — End-user agentic coding CLI (Rust)
- `elixctl` — Platform/ops CLI (Go)

## Installation

### macOS / Linux (Homebrew)

```bash
# Add the tap
brew tap elixcode-space/homebrew-tap

# If prompted about untrusted tap, run:
brew trust --formula elixcode-space/tap/elixcode
brew trust --formula elixcode-space/tap/elixctl

# Install both CLIs
brew install elixcode elixctl

# Or individually:
# brew install elixcode    # user CLI (Rust)
# brew install elixctl  # platform CLI (Go)
```

### Windows

#### Scoop

```powershell
# Add bucket and install
scoop bucket add elixcode https://github.com/elixcode-space/scoop-bucket
scoop install elixcode
scoop install elixctl
```

#### Winget

```powershell
winget install elixcode.elixcode
winget install elixcode.elixctl
```

#### Direct Download (Windows)

Download from GitHub Releases:
- `elixcode`: https://github.com/elixcode-space/elixcode/releases
- `elixctl`: https://github.com/elixcode-space/elixctl/releases

## Usage

```bash
# elixcode — connect to public gateway by default
export ELIXCODE_API_KEY="your-api-key"

# User CLI (Rust)
elixcode chat               # Interactive AI coding agent
elixcode ask "question"     # One-shot question
elixcode run "task"         # Autonomous agent task

# elixctl — platform management
elixctl workers             # List fleet workers
elixctl health              # Gateway health check
elixctl deploy --target gateway --version 0.9.2

# JavaScript CLIs (alternative)
npx elixcode chat
deno run -A @elixcode/elixcode chat
bunx elixcode-bun chat

# Self-hosted gateway (Elixir escript)
mix deps.get
mix escript.build
./elixcode --gateway 4000
```

## Supported Platforms

| CLI | macOS (Intel/ARM) | Linux (x86_64/ARM64) | Windows (x86_64) |
|-----|:-:|:-:|:-:|
| `elixcode` (Rust) | ✅ | ✅ | ✅ (zip) |
| `elixctl` (Go) | ✅ | ✅ | ✅ (zip) |
| `elixcode` (JS/TS) | ✅ | ✅ | ✅ |

## Release Flow

When publishing a new version:

```bash
# For Rust CLI (in clis/elixcode repo)
git tag rust-v0.9.2
git push origin rust-v0.9.2
# GitHub Actions will build binaries and publish to GitHub Releases

# For JS CLI (same submodule repo)
git tag js-v0.9.2
git push origin js-v0.9.2
# GitHub Actions will publish to npm and JSR
```

The brew formulas will pick up new release versions on next `brew upgrade`.