class Swarm < Formula
  desc "CLI interface for agents working in sprints"
  homepage "https://github.com/seezatnap/swarm-hug"
  url "https://github.com/seezatnap/swarm-hug/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "9e71319106ca6ad00c82efd1f1caf453cc275dc1fc7957299a56843300a75c4c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/swarm", "--version"
  end
end
