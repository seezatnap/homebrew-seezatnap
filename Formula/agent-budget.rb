class AgentBudget < Formula
  desc "Small Rust CLI that reports weekly remaining usage for Codex and Claude"
  homepage "https://github.com/seezatnap/agent-budget"
  url "https://github.com/seezatnap/agent-budget/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "03e8c8a31eafd9a7cf74473047030d1b850f28ecae22dc5757dc56281c3b069d"
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
