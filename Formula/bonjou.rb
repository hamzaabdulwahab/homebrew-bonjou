class Bonjou < Formula
  desc "Terminal-based LAN chat application with peer discovery"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "dd8a75888a9535b9fbc33ad358ce486c0531d4c180882724103c2e64daa33eee"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
