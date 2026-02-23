class MorganManager < Formula
  desc "Process manager CLI for Morgan orchestrator runs"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "1fd175a7ed584a3b6de39669343df8ad27e1818539bcff1fe00e88f09859c7ff"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "morgan-manager"
  end

  test do
    system "#{bin}/morgan-manager", "--help"
  end
end
