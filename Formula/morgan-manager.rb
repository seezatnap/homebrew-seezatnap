class MorganManager < Formula
  desc "Process manager CLI for Morgan orchestrator runs"
  homepage "https://github.com/seezatnap/morgan"
  url "https://github.com/seezatnap/morgan/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "81ac304bdea94eb49e85dc12a8e96f26c33cea06f27d1c34f95bd16184b87c57"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "morgan-manager"
  end

  test do
    system "#{bin}/morgan-manager", "--help"
  end
end
