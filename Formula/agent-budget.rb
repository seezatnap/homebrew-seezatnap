class AgentBudget < Formula
  desc "Small Rust CLI that reports weekly remaining usage for Codex and Claude"
  homepage "https://github.com/seezatnap/agent-budget"
  url "https://github.com/seezatnap/agent-budget/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a2ee8b26fbeefdd2685cf5c99c9dcd3b051e99d2f5869474a6bea63f4f77d5cc"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/agent-budget", "--help"
  end
end
