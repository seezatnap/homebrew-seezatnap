class Juliet < Formula
  desc "Minimal CLI wrapper for Claude Code and Codex with prompt-driven workflows"
  homepage "https://github.com/seezatnap/juliet"
  url "https://github.com/seezatnap/juliet/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c83df1680cc03174b68979ff1bb71f032e02a2d77e4a26b31832bc5f2878ce3f"
  license "MIT"

  depends_on "rust" => :build
  depends_on "seezatnap/seezatnap/swarm"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/juliet", "--help"
  end
end
