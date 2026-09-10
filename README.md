# elixcode Homebrew Tap

Homebrew formulae for [Elixcode](https://elixcode.space) CLI tools.

## Installation

### macOS / Linux (Homebrew)

```bash
# Add the tap
brew tap elixcode-space/homebrew-tap
brew tap --repair 2>/dev/null || true

# If prompted about untrusted tap, run:
brew trust --formula elixcode-space/tap/elix-cli
brew trust --formula elixcode-space/tap/elix-clictl

# Install both CLIs
brew install elixcode elixcodectl

# Or individually:
# brew install elixcode      # user CLI (Rust)
# brew install elixcodectl   # platform CLI (Go)
```

### Windows

#### Scoop

```powershell
# Add bucket and install
scoop bucket add elixcode https://github.com/elixcode-space/scoop-bucket
scoop install elix
scoop install elixctl
```

#### Winget

```powershell
winget install elixcode.elix
winget install elixcode.elixctl
```

#### Direct Download (Windows)

Download from GitHub Releases:
- `elix`: https://github.com/elixcode-space/elix/releases
- `elixctl`: https://github.com/elixcode-space/elixctl/releases

## Usage

```bash
# elix — connect to public gateway by default
export ELIXCODE_API_KEY="your-api-key"
elix chat          # AI coding agent
elix ask "question"  # one-shot

# elixctl — platform management
elixctl workers     # list fleet workers
elixctl health      # gateway health check
elixctl deploy --target gateway --version 0.1.0  # deploy

# Self-hosted gateway (Elixir escript)
mix deps.get
mix escript.build
./elixircode --gateway 4000
```

## Supported Platforms

| CLI | macOS (Intel/ARM) | Linux (x86_64/ARM64) | Windows (x86_64/ARM64) |
|-----|:-:|:-:|:-:|
| `elix`      | ✅ | ✅ | ✅ (zip) |
| `elixctl`   | ✅ | ✅ | ✅ (zip) |
| `elixircode`| ✅ | ✅ | ❌ (Elixir not yet on Windows) |

## Release Flow

When publishing a new version:

```bash
git tag v0.1.1
git push origin v0.1.1
# GitHub Actions will build and publish to GitHub Releases
# The brew/scoop formulas will pick up the new version on next `brew upgrade`
```
