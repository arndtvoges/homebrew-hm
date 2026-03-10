class Hm < Formula
  desc "Translate natural language into shell commands using Claude AI"
  homepage "https://github.com/arndtvoges/hm"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arndtvoges/hm/releases/download/v1.0.0/hm-darwin-arm64"
      sha256 "33d63bc3212d27b812aa74d7f8b776a2839f47a32979db79a25e833b46b8aaa0"
    else
      url "https://github.com/arndtvoges/hm/releases/download/v1.0.0/hm-darwin-x64"
      sha256 "f06deb322aeef52ed272da941c5d456315562e6ae16e1a3609ac97b27a574c50"
    end
  end

  on_linux do
    url "https://github.com/arndtvoges/hm/releases/download/v1.0.0/hm-linux-x64"
    sha256 "351a26efb1057dfdd24f6084f7c7a856399d0a8ca5e609eafcf8368628d82b04"
  end

  def install
    binary = Dir.glob("hm-*").first || "hm"
    bin.install binary => "hm"
  end

  test do
    assert_match "hm", shell_output("#{bin}/hm --help")
  end
end
