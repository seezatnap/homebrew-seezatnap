class AgentBudget < Formula
  desc "Small Rust CLI that reports weekly remaining usage for Codex and Claude"
  homepage "https://github.com/seezatnap/agent-budget"
  url "https://github.com/seezatnap/agent-budget/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "36e9416ec8e1d867bf171b4df98cc8084995c43c671a54c1e951eb8ba0488fd7"
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
