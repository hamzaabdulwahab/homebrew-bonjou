class Bonjou < Formula
  desc "Terminal-based LAN chat and transfer application"
  homepage "https://github.com/hamzawahab/bonjou-terminal"
  version "1.0.10"

  on_macos do
  url "https://github.com/hamzaabdulwahab/bonjou-terminal/releases/download/v1.0.10/bonjou-macos.tar.gz"
  sha256 "9f73609038a7134324aec8c56c99a9fc538f649622f5cabce972be6a4df3bd57"
  end

  def install
    bin.install "bonjou-macos" => "bonjou"
  end

  def caveats
    <<~EOS
      Bonjou expects UDP discovery on port 46320 and TCP messaging on port 46321.
      Ensure these ports are open on your firewall.
    EOS
  end

  test do
    pipe_output("#{bin}/bonjou", "@exit\n")
  end
end
