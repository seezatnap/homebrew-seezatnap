class Morgan < Formula
  desc "JulietScript generation and Juliet run orchestrator"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7ae24b9b02b460ac0f228822bb43750f1f79a8089f513867272dd037b904ebcb"
  license "MIT"

  depends_on "rust" => :build
  depends_on "seezatnap/seezatnap/juliet"
  depends_on "seezatnap/seezatnap/julietscript-lint"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/morgan", "--help"
  end
end
