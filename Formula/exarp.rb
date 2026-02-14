class Exarp < Formula
  desc "Behavioral backup intelligence. Watches your data. Acts when it matters."
  homepage "https://github.com/flint-dominic/exarp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-dominic/exarp/releases/download/v0.1.0/exarp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8079f5824ff163eae02d5c6fbf06c3c4067b332900e1121b079cb2b94882c4f8"
    else
      url "https://github.com/flint-dominic/exarp/releases/download/v0.1.0/exarp-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "110247cbec85e0d4b1a43fadfe6818a2cd9a153bddb6d585712c2535530567d4"
    end
  end

  on_linux do
    url "https://github.com/flint-dominic/exarp/releases/download/v0.1.0/exarp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b7d1afbb56bd98578e606cbed740b5210646c8f0e0cd80118d414bb19179012f"
  end

  def install
    bin.install "exarp"
  end

  test do
    system "#{bin}/exarp", "--help"
  end
end
