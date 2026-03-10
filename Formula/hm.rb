class Hm < Formula
  desc "Translate natural language into shell commands using Claude AI"
  homepage "https://github.com/arndtvoges/hm"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arndtvoges/hm/releases/download/v0.0.0/hm-darwin-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/arndtvoges/hm/releases/download/v0.0.0/hm-darwin-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/arndtvoges/hm/releases/download/v0.0.0/hm-linux-x64"
    sha256 "PLACEHOLDER"
  end

  def install
    binary = Dir.glob("hm-*").first || "hm"
    bin.install binary => "hm"
  end

  test do
    assert_match "hm", shell_output("#{bin}/hm --help")
  end
end
