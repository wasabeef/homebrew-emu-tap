class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.3.0/emu-Darwin-aarch64.tar.gz"
      sha256 "4fd8f9322c4434c5b50c4a3ce43ea360ab6fb30aab57aba32cda24e1f454e775"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.3.0/emu-Darwin-x86_64.tar.gz"
      sha256 "43880000e0c5e9e5b08ebdf28e9039055c8fcd9952c3bdcf3e99d060577a9740"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.3.0/emu-Linux-x86_64.tar.gz"
    sha256 "6a4b2a7c66b36263124ebedcc8c8328a696dbec3468c72651845a85b6f899ef0"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2026-04-14T05:49:14Z
