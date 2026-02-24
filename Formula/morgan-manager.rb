class MorganManager < Formula
  desc "Process manager CLI for Morgan orchestrator runs"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "b3b8f3e25e69faf40a345e9b6926a1aa5cb76ceac2369fe4ec180f70f5ade548"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "morgan-manager"
  end

  test do
    system "#{bin}/morgan-manager", "--help"
  end
end
