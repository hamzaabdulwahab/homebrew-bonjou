class Bonjou < Formula
  desc "Terminal-based LAN chat application with peer discovery"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.1.0/bonjou-macos"
    sha256 "ba2b2d6bfa00ba59a7556c47f7665851c622b7ee4b605b080d2380377b3eef51"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
