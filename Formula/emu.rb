class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.1.0/emu-Darwin-aarch64.tar.gz"
      sha256 "5d8d4ba1e07a9d666b770513f96efd172dd862c7713d70d4fee55129a5987028"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.1.0/emu-Darwin-x86_64.tar.gz"
      sha256 "797f579da04a0c10812db097c7f67c846e8486df0e6113a148fd409ca94fb7e9"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.1.0/emu-Linux-x86_64.tar.gz"
    sha256 "13be26447697b945bc58ccae9e26a6a2b7d9879964ba74bf69f0a490eb01aa5f"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-07-23T05:49:44Z
