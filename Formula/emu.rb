class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.2.0/emu-Darwin-aarch64.tar.gz"
      sha256 "7f2de3838e51440a0cb92aec614e6adbbc82da1bdfcd11fa6053e15578cd8e0b"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.2.0/emu-Darwin-x86_64.tar.gz"
      sha256 "103f5c06e5cbcdda312d3b076a95d97fd5a49138fbd8f6e3ca7cbe1fe54f2d62"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.2.0/emu-Linux-x86_64.tar.gz"
    sha256 "99872eb490605eab44b8738e058a5d2cf872144c8240e2063f29d640909899d3"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-15T09:11:07Z
