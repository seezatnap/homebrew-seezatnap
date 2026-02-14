class Juliet < Formula
  desc "Minimal CLI wrapper for Claude Code and Codex with prompt-driven workflows"
  homepage "https://github.com/seezatnap/juliet"
  url "https://github.com/seezatnap/juliet/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "060d2e1352c2d2fab805d12c0ec707a9ff6f0120e4ae6619fb298647bc17d92b"
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
