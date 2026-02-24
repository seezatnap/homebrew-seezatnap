class Fritz < Formula
  desc "Orchestrate Juliet runs from JulietScript specs"
  homepage "https://github.com/seezatnap/fritz"
  url "https://github.com/seezatnap/fritz/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "c9b0c32e23f75569d4110742183725378839bdd02fade0556cba158d6ea977f6"
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
