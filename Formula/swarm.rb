class Swarm < Formula
  desc "CLI interface for agents working in sprints"
  homepage "https://github.com/seezatnap/swarm-hug"
  url "https://github.com/seezatnap/swarm-hug/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d1d5188a31828a98ee8b38dd968bc0a551a9d3a961549b931ccccfdaeaf5c2b4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/swarm", "--version"
  end
end
