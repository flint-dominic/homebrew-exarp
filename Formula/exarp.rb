class Exarp < Formula
  desc "Behavioral backup intelligence — detects ransomware, monitors backup health"
  homepage "https://github.com/flint-dominic/exarp"
  version "0.2.0"
  license "Apache-2.0"

  on_linux do
    on_intel do
      url "https://github.com/flint-dominic/exarp/releases/download/v0.2.0/exarp-linux-x86_64"
      sha256 "ffb96f154d2e58a0407a97402dc32caa2745076c90a89f45d61695c0b896e973"
    end
  end

  def install
    bin.install Dir["exarp*"].first => "exarp"
  end

  test do
    assert_match "exarp", shell_output("#{bin}/exarp --version")
  end
end
