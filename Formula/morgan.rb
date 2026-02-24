class Morgan < Formula
  desc "JulietScript generation and Juliet run orchestrator"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "3dea18f3a45004fe65460420aebf38a6dd9401eb6eb43f2773566deb490fd131"
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
