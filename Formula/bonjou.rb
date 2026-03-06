class Bonjou < Formula
  desc "Terminal-based LAN chat application with peer discovery"
  homepage "https://github.com/hamzaabdulwahab/bonjou-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/hamzaabdulwahab/bonjou-cli/releases/download/v1.0.0/bonjou-macos"
    sha256 "b6389991ea39660ec92447330bfa7262bd55c772accd6c0830645fa8c71cf155"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  test do
    system "#{bin}/bonjou", "--version"
  end
end
