class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.1.1/emu-Darwin-aarch64.tar.gz"
      sha256 "6d327c900e98bdc6e89efff8ac1c5cb3bb577db3a81ba63b4194e5c8098574c2"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.1.1/emu-Darwin-x86_64.tar.gz"
      sha256 "2fd33e9ae9890c537de34c4dee86ebd2dcd40f6229f5664a59741011a51fb621"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.1.1/emu-Linux-x86_64.tar.gz"
    sha256 "3cd4e1bd1d9bbdeb6449fc96c86659e022e679033eb9f00838dd4e214007b417"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2026-04-08T10:19:42Z
