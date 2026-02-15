class AgentBudget < Formula
  desc "Small Rust CLI that reports weekly remaining usage for Codex and Claude"
  homepage "https://github.com/seezatnap/agent-budget"
  url "https://github.com/seezatnap/agent-budget/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "011d4e3943575f5ae041f8bd231516d17b549698190e5cfe3904500eeb648f20"
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
