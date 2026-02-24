class JulietscriptLint < Formula
  desc "Lint JulietScript files against the repository specification"
  homepage "https://github.com/seezatnap/julietscript"
  url "https://github.com/seezatnap/julietscript/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "aa5f7bde7142370ba6d1bfae7d1ee5986c85218dda917ce2e40b031aa5746ab1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/julietscript-lint")
  end

  test do
    system "#{bin}/julietscript-lint", "--help"
  end
end
