class Emu < Formula
  desc "TUI for managing Android emulators and iOS simulators"
  homepage "https://github.com/wasabeef/emu"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wasabeef/emu/releases/download/v1.0.0/emu-Darwin-aarch64.tar.gz"
      sha256 "dd702d82f361b5d5e89987b9d045d4901e980404e10824eddadd7a0c35ebbd9c"
    else
      url "https://github.com/wasabeef/emu/releases/download/v1.0.0/emu-Darwin-x86_64.tar.gz"
      sha256 "2f51541a649d470c6de7f1aa07fdf2b91b1dde12d366649af8689a443f965bdf"
    end
  end

  on_linux do
    url "https://github.com/wasabeef/emu/releases/download/v1.0.0/emu-Linux-x86_64.tar.gz"
    sha256 "0c02ebcfbe82e94f9218cd0b3ef06c5a2acecdfc166e61eb8ddcc277b519e97d"
  end

  def install
    bin.install "emu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emu --version")
  end
end

# Updated: 2025-06-28T15:52:38Z
