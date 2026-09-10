class ElixCtl < Formula
  desc "Elixcode platform CLI — fleet management, deployment, and observability"
  homepage "https://github.com/elixcode-space/elixctl"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elixctl/releases/download/v0.1.0/elixctl_0.1.0_darwin_amd64.tar.gz"
      sha256 ""
    else
      url "https://github.com/elixcode-space/elixctl/releases/download/v0.1.0/elixctl_0.1.0_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elixctl/releases/download/v0.1.0/elixctl_0.1.0_linux_amd64.tar.gz"
      sha256 ""
    else
      url "https://github.com/elixcode-space/elixctl/releases/download/v0.1.0/elixctl_0.1.0_linux_arm64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "elixctl"
  end

  test do
    assert_match "elixctl", shell_output("#{bin}/elixctl --help")
  end

  # Windows users: download from GitHub releases
  # elixctl_0.1.0_windows_amd64.zip from:
  #   https://github.com/elixcode-space/elixctl/releases/download/v0.1.0/elixctl_0.1.0_windows_amd64.zip
  # Or use Scoop:
  #   scoop bucket add elixcode https://github.com/elixcode-space/scoop-bucket
  #   scoop install elixctl
  # Or use Winget:
  #   winget install elixcode.elixctl
end
