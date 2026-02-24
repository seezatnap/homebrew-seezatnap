class JulietscriptLint < Formula
  desc "Lint JulietScript files against the repository specification"
  homepage "https://github.com/seezatnap/julietscript"
  url "https://github.com/seezatnap/julietscript/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "cecdc3ed876499d8c913d8213bf18f7ac4e4b8eb93da5f219f0f4f082df38e12"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/julietscript-lint")
  end

  test do
    system "#{bin}/julietscript-lint", "--help"
  end
end
