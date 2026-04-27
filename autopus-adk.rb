class AutopusAdk < Formula
  desc "Agentic Development Kit for coding CLIs"
  homepage "https://github.com/Insajin/autopus-adk"
  version "0.40.56"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_amd64.tar.gz"
      sha256 "7a463c9913809ee2dda846a3873643245a68180d5eed38570f730def2b7d3d59"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_arm64.tar.gz"
      sha256 "987f9d5c8a8f2dcf5d2a2199a87a08f75a2ae80e787f5658da5e1c2c71c39e66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_amd64.tar.gz"
      sha256 "38893ec9e32b15ec640c03837ab0db61a1ae67d85d66137a0325d1dc37f2199c"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_arm64.tar.gz"
      sha256 "0e87ad39694fe662a5c90172b933ddd7507396af9111be508fce3e5ed31a6e37"
    end
  end

  def install
    bin.install "auto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto version")
  end
end
