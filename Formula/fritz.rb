class Fritz < Formula
  desc "Orchestrate Juliet runs from JulietScript specs"
  homepage "https://github.com/seezatnap/fritz"
  url "https://github.com/seezatnap/fritz/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0a332f527d1a8a044ca934ae0fdc8905c1e4ad1d6b38438505ff2525d49c5ada"
  license "MIT"

  depends_on "rust" => :build
  depends_on "seezatnap/seezatnap/juliet"
  depends_on "seezatnap/seezatnap/julietscript-lint"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fritz", "--help"
  end
end
