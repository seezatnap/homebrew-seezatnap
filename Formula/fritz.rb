class Fritz < Formula
  desc "Orchestrate Juliet runs from JulietScript specs"
  homepage "https://github.com/seezatnap/fritz"
  url "https://github.com/seezatnap/fritz/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "3a090a328b8f08f7995e727d0392e7897ae4fa0547e67a0498b3aab185e9fedf"
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
