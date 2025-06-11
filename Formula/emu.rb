class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.0.1/emu-Darwin-aarch64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.0.1/emu-Darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_X86_64"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.0.1/emu-Linux-x86_64.tar.gz"
    sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end