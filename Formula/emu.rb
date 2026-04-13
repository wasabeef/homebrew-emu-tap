class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.2.0/emu-Darwin-aarch64.tar.gz"
      sha256 "bd738e7f86fe13e7aacc2926361db91c4eee016986ba5afc786759bf0951d519"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.2.0/emu-Darwin-x86_64.tar.gz"
      sha256 "39b965775a0c4499d8c5b3126634291af67af0cbe283aa86401744b34d6c215d"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.2.0/emu-Linux-x86_64.tar.gz"
    sha256 "708e4a4437aeff8b2d3ca9046e327928afd2072842408183f4de6c339ad45d79"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2026-04-13T08:15:09Z
