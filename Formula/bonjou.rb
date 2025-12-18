class Bonjou < Formula
  desc "Terminal-based LAN chat and transfer application"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "e2830fefb316b103e6a34aca7ae46c76ca9d36a73b7149e1642d2baf223fb9fb"

    def install
      bin.install "bonjou-macos" => "bonjou"
    end
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
