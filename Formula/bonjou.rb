class Bonjou < Formula
  desc "Terminal-based LAN chat and transfer application"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "0c6e2d77c2cd1b1b03253eb7685b365641815963c3381f2943220632bebfcf7d"

    def install
      bin.install "bonjou-macos" => "bonjou"
    end
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
