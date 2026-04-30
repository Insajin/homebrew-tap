class AutopusAdk < Formula
  desc "Agentic Development Kit for coding CLIs"
  homepage "https://github.com/Insajin/autopus-adk"
  version "0.43.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_amd64.tar.gz"
      sha256 "6196b67ee40c532dc0fba65668a981b518e1efea179a666d630c395db52d842b"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_arm64.tar.gz"
      sha256 "5f4677dec0ba07e1f6b04d908f749bf6308ad96e8ce4646e6530fd81ef2b235e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_amd64.tar.gz"
      sha256 "294be27d432f3b58b29819eb7195848ff11ea4a6a645541600ee06c4db7db144"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_arm64.tar.gz"
      sha256 "070fa1c09a3c2b9c148af429e4976d82149e991122a637942e683aa95ae6a51c"
    end
  end

  def install
    bin.install "auto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto version")
  end
end
