class Fritz < Formula
  desc "Orchestrate Juliet runs from JulietScript specs"
  homepage "https://github.com/seezatnap/fritz"
  url "https://github.com/seezatnap/fritz/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dbf04fab08cad4615cb5051e0bb8ce0a79758143afeffe96fabd2986f353c568"
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
