class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.1.0/emu-Darwin-aarch64.tar.gz"
      sha256 "6007d1105e85551ca83051387e2eab56c3059b54e67f6ad1e62a7867c13a9e5d"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.1.0/emu-Darwin-x86_64.tar.gz"
      sha256 "c579986ce4f444123f85897355bc896f3ba2be58886fc85c1bdb94624c2c2b32"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.1.0/emu-Linux-x86_64.tar.gz"
    sha256 "021cb1cac4ceebaaf43cf368fca3202c58215eb4013f6aad46b0165bc62259c1"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-11T14:24:26Z
