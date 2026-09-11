class Elixcode < Formula
  desc "Elixcode user CLI — OpenCode/Cursor/Claude Code-style AI coding agent"
  homepage "https://github.com/elixcode-space/elixcode"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elixcode/releases/download/v0.1.0/elixcode-x86_64-apple-darwin.tar.gz"
      sha256 :unneeded
    else
      url "https://github.com/elixcode-space/elixcode/releases/download/v0.1.0/elixcode-aarch64-apple-darwin.tar.gz"
      sha256 :unneeded
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/elixcode-space/elixcode/releases/download/v0.1.0/elixcode-x86_64-unknown-linux-gnu.tar.gz"
      sha256 :unneeded
    else
      url "https://github.com/elixcode-space/elixcode/releases/download/v0.1.0/elixcode-aarch64-unknown-linux-gnu.tar.gz"
      sha256 :unneeded
    end
  end

  def install
    bin.install "elixcode"
  end

  test do
    assert_match "elixcode", shell_output("#{bin}/elixcode --help")
  end
end
