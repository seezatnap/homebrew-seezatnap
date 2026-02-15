class Juliet < Formula
  desc "Minimal CLI wrapper for Claude Code and Codex with prompt-driven workflows"
  homepage "https://github.com/seezatnap/juliet"
  url "https://github.com/seezatnap/juliet/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c559d20a48f6907d3594be3f49f9a13e176775423745c7b6ed3ee716a583bcea"
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
