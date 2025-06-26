class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v0.2.2/emu-Darwin-aarch64.tar.gz"
      sha256 "1e0cd146d020ebc9b623bb0f317fa51462ef3d8cb90aab038adacca2bb2daa0f"
    else
      url "https://github.com/wasabeef/emu/releases/download/v0.2.2/emu-Darwin-x86_64.tar.gz"
      sha256 "7b7377b3dca06d2bb6980267b01f37baeeeca5a03a4ad3eff9c252e3ff4eadbf"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v0.2.2/emu-Linux-x86_64.tar.gz"
    sha256 "23a980d24024a4225d47362cfdc091e58744c9720f2ae0855c966a5ab8380d33"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-26T01:38:47Z
