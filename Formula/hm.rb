class Hm < Formula
  desc "Translate natural language into shell commands using AI"
  homepage "https://github.com/arndtvoges/hm"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arndtvoges/hm/releases/download/v1.1.0/hm-darwin-arm64"
      sha256 "292f847ad75acc009f18b1ab90db81182a8968057e923aff9276f003376997c0"
    else
      url "https://github.com/arndtvoges/hm/releases/download/v1.1.0/hm-darwin-x64"
      sha256 "158d04a570069e02b88f464b28b491aa61d8318f0f400d485d04afb2e5fdd30c"
    end
  end

  on_linux do
    url "https://github.com/arndtvoges/hm/releases/download/v1.1.0/hm-linux-x64"
    sha256 "1185fe2627b1c73fdee3719cd999b40db368055bd24a49511a73cd2748ddb6f4"
  end

  def install
    binary = Dir.glob("hm-*").first || "hm"
    bin.install binary => "hm"
  end

  test do
    assert_match "hm", shell_output("#{bin}/hm --help")
  end
end
