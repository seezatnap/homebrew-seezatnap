class Morgan < Formula
  desc "JulietScript generation and Juliet run orchestrator"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "e7c73f98068683fdb8cc921d355ae8638e93aee9daae27261488278de9041564"
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
