class AgentBudget < Formula
  desc "Small Rust CLI that reports weekly remaining usage for Codex and Claude"
  homepage "https://github.com/seezatnap/agent-budget"
  url "https://github.com/seezatnap/agent-budget/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "769f9388e169248fff0972cc64196702d21dbc16319ff597bfed4f5b52d29e28"
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
