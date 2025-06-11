class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.0.2/emu-Darwin-aarch64.tar.gz"
      sha256 "4eccf072600e7f31ed2be45e26ec18cd79334b2c31c2d8341e494edfc5c7b773"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.0.2/emu-Darwin-x86_64.tar.gz"
      sha256 "52d96b1978ccbe88b8f7ff5419cf6c4459e0e4591a750b00ad620ea9f862840e"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.0.2/emu-Linux-x86_64.tar.gz"
    sha256 "e95b9527555d495efe68598f7af366c69243bc548685d240dfc19cc8671072bd"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-11T07:53:30Z
