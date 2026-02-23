class JulietscriptLint < Formula
  desc "Lint JulietScript files against the repository specification"
  homepage "https://github.com/seezatnap/julietscript"
  url "https://github.com/seezatnap/julietscript/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7b48738e322bea27a5aa8e8fe771e0703fc2512f3e7db1eda207c212644113cd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/julietscript-lint")
  end

  test do
    system "#{bin}/julietscript-lint", "--help"
  end
end
