class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.0.1/emu-Darwin-aarch64.tar.gz"
      sha256 "d8d311588b146694eda3378baafae56d89fe9a7c29c214461aa6738717777854"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.0.1/emu-Darwin-x86_64.tar.gz"
      sha256 "8b3e05af697e34e3e026f611c4d4ca28b1b050a1cff50b8676624758a77e3520"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.0.1/emu-Linux-x86_64.tar.gz"
    sha256 "f873011afc19c848f2399e28505349d36a37684f3a85e0c9b9f55fda7d4fa5e1"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-29T16:03:56Z
