class Swarm < Formula
  desc "CLI interface for agents working in sprints"
  homepage "https://github.com/seezatnap/swarm-hug"
  url "https://github.com/seezatnap/swarm-hug/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "7615d1679255a99080751f2dbaeae84ea4dced2381546727b90fb4f0d56fd51c"
  license "MIT"

  depends_on "rust" => :build

  def install
    if OS.linux?
      system_ld = if File.executable?("/usr/bin/ld")
        "/usr/bin/ld"
      elsif File.executable?("/bin/ld")
        "/bin/ld"
      end

      odie "Unable to locate system ld linker" if system_ld.nil?

      # Prefer the host linker over Homebrew binutils ld (SFrame incompatibility on newer Ubuntu).
      (buildpath/"ld").write <<~SH
        #!/bin/sh
        exec "#{system_ld}" "$@"
      SH
      chmod 0755, buildpath/"ld"
      ENV.prepend_path "PATH", buildpath
    end

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/swarm", "--version"
  end
end
