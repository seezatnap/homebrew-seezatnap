class Juliet < Formula
  desc "Minimal CLI wrapper for Claude Code and Codex with prompt-driven workflows"
  homepage "https://github.com/seezatnap/juliet"
  url "https://github.com/seezatnap/juliet/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "feb26d8b865ceeb985553215606ad444a13a3042fdf84ec3c2add6c29e09b2a8"
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
