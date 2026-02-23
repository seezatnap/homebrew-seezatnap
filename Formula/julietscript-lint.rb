class JulietscriptLint < Formula
  desc "Lint JulietScript files against the repository specification"
  homepage "https://github.com/seezatnap/julietscript"
  url "https://github.com/seezatnap/julietscript/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "56c68fc352dcda8a86afc67acce18251f848abe2a2b80d85e256adb960252afc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/julietscript-lint")
  end

  test do
    system "#{bin}/julietscript-lint", "--help"
  end
end
