class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.0.2/emu-Darwin-aarch64.tar.gz"
      sha256 "77e5377caf7c49cc9e4eb7999ee553a673928c70eac1fc7d255dfb7dfc608e39"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.0.2/emu-Darwin-x86_64.tar.gz"
      sha256 "129a445a54ec8455ac9d8ce6d4b7d1270e6179a0b47ae32d44d88451137528bc"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.0.2/emu-Linux-x86_64.tar.gz"
    sha256 "7729caefe415ff149e8a29d4530c12e5073ffbcfd8ab939b9cb52cdea917ab47"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-07-02T16:24:04Z
