class JulietscriptLint < Formula
  desc "Lint JulietScript files against the repository specification"
  homepage "https://github.com/seezatnap/julietscript"
  url "https://github.com/seezatnap/julietscript/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "883a16cf22472aa1c88b441080b5704f0cff3d7fecea1ddfcd8b98e3fed316cd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/julietscript-lint")
  end

  test do
    system "#{bin}/julietscript-lint", "--help"
  end
end
