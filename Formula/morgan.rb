class Morgan < Formula
  desc "JulietScript generation and Juliet run orchestrator"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "537c71576584d3ad45c06e6e1f2158e6d944a0b24ceb92ad90ab32897158ff91"
  license "MIT"

  depends_on "rust" => :build
  depends_on "seezatnap/seezatnap/juliet"
  depends_on "seezatnap/seezatnap/julietscript-lint"

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "morgan"
  end

  test do
    system "#{bin}/morgan", "--help"
  end
end
