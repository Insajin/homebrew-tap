class AutopusAdk < Formula
  desc "Agentic Development Kit for coding CLIs"
  homepage "https://github.com/Insajin/autopus-adk"
  version "0.45.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_amd64.tar.gz"
      sha256 "a389431b3255bed4e61bc71f27dfca9b81df4ab34ac85573bd9687439cf546d3"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_arm64.tar.gz"
      sha256 "40bbe4b09d6b76cc8ed4beb90b0dc45af5eb1c0af50d36c2a1d30c5bc3e463cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_amd64.tar.gz"
      sha256 "17f7fae7b9efe603bd99bb755e07bafe222c4a6239bc111620019bb46b2419b4"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_arm64.tar.gz"
      sha256 "0fcfedda1a09ce1fdcf20fa464ce0721510b9d80d6879296a35adac48ed4f214"
    end
  end

  def install
    bin.install "auto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto version")
  end
end
