class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.2.1/emu-Darwin-aarch64.tar.gz"
      sha256 "2665b1f3e9c22c3b2d7573a7140ad463089fa61261f32f170115de5bcafe7fcc"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.2.1/emu-Darwin-x86_64.tar.gz"
      sha256 "c42b36e940ad1d6fe71fd2388c4225167a3377037515fb04353b98237ad62dcd"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.2.1/emu-Linux-x86_64.tar.gz"
    sha256 "dfba1380939a8d0f90105f7831ff5e6fcfd982adb04536332c924b4723ba6e56"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-15T14:37:04Z
