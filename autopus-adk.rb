class AutopusAdk < Formula
  desc "Agentic Development Kit for coding CLIs"
  homepage "https://github.com/Insajin/autopus-adk"
  version "0.50.38"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_amd64.tar.gz"
      sha256 "8093dca186042ce7c45a96a5d9555fedad55d6d9c72288dde799f0e235e60d2f"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_arm64.tar.gz"
      sha256 "00c56e46c4a4047720fdb816f5a7890f5d3022d2062c39723b3b38747e5c91b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_amd64.tar.gz"
      sha256 "fd64b12b002a9149328449e33b1e55f17a2cfa62f8bd4a0747c48f39a7aa882e"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_arm64.tar.gz"
      sha256 "734ed3f056e8da650a1cf5d6dd35c51e9fde59f799c116ea7a42907642ae6d67"
    end
  end

  def install
    bin.install "auto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto version")
  end
end
