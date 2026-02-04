class Swarm < Formula
  desc "CLI interface for agents working in sprints"
  homepage "https://github.com/seezatnap/swarm-hug"
  url "https://github.com/seezatnap/swarm-hug/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e189b0eed02ba776b5b64e035b454fbea54a5e27a258e975da82b93e927db293"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/swarm", "--version"
  end
end
