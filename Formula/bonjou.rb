class Bonjou < Formula
  desc "Terminal-based LAN chat application with peer discovery"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "6b039830f65fb1224027fb4a9aa4233e84fe486956d380a408ae7ef087dbd43c"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
