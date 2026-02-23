class Morgan < Formula
  desc "JulietScript generation and Juliet run orchestrator"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "1fd175a7ed584a3b6de39669343df8ad27e1818539bcff1fe00e88f09859c7ff"
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
