class Bonjou < Formula
  desc "Terminal-based LAN chat application with peer discovery"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "72332a2209f01ee0b9d192500293088e99a435fff22608df30d77b187d381fac"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
