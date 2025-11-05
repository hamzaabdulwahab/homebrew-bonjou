class Bonjou < Formula
  desc "Terminal-based LAN chat and file transfer app"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "1ae6e0a1e872aba35feb3de6a2cf6f9786579802a1e2bdc733e4529e92ae4ba9"

    def install
      bin.install "bonjou-macos" => "bonjou"
    end
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
