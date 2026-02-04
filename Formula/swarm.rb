class Swarm < Formula
  desc "CLI interface for agents working in sprints"
  homepage "https://github.com/seezatnap/swarm-hug"
  url "https://github.com/seezatnap/swarm-hug/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/swarm", "--version"
  end
end
