class Juliet < Formula
  desc "Minimal CLI wrapper for Claude Code and Codex with prompt-driven workflows"
  homepage "https://github.com/seezatnap/juliet"
  url "https://github.com/seezatnap/juliet/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3ee9c25dc176ab3c4384656ce9e6eb604e4c1737126cf96d637aff7dcd475fc8"
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
