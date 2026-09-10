class Elixcode < Formula
  desc "Elixcode user CLI — OpenCode/Cursor/Claude Code-style AI coding agent"
  homepage "https://github.com/elixcode-space/elix"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elix/releases/download/v0.1.0/elix-x86_64-apple-darwin.tar.gz"
      sha256 :unneeded
    else
      url "https://github.com/elixcode-space/elix/releases/download/v0.1.0/elix-aarch64-apple-darwin.tar.gz"
      sha256 :unneeded
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elix/releases/download/v0.1.0/elix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 :unneeded
    else
      url "https://github.com/elixcode-space/elix/releases/download/v0.1.0/elix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 :unneeded
    end
  end

  def install
    bin.install "elix"
  end

  test do
    assert_match "elix", shell_output("#{bin}/elix --help")
  end
end
