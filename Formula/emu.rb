class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.0.3/emu-Darwin-aarch64.tar.gz"
      sha256 "9aee774970be288283c6820f47c2f5861531571e9c62f0d37b2cfb06559ee4f2"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.0.3/emu-Darwin-x86_64.tar.gz"
      sha256 "34df2055c1d5c55916933e721b7b01f7b6c7b7c0130deaf4e2a9523751308130"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.0.3/emu-Linux-x86_64.tar.gz"
    sha256 "efdf66ec5aa4411066c0e8447c05bfae9b622b3dbb2f04646f9fa0e1644e7780"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-07-12T06:47:55Z
