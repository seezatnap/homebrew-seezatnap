class MorganManager < Formula
  desc "Process manager CLI for Morgan orchestrator runs"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "5331f8b0859ea55df5b51fafbb37753cafbb5250b085c0fb62d7e05db4b860bf"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "morgan-manager"
  end

  test do
    system "#{bin}/morgan-manager", "--help"
  end
end
