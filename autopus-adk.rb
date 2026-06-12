class AutopusAdk < Formula
  desc "Agentic Development Kit for coding CLIs"
  homepage "https://github.com/Insajin/autopus-adk"
  version "0.50.46"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_amd64.tar.gz"
      sha256 "53429bee2d0a4cf9e426d40c3368cb76057428657c1bf46c0651578fd2ea7791"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_darwin_arm64.tar.gz"
      sha256 "9c7e1a881352ca834d38513c3615e647367b9b4341b779aa5cc2ed3c6a31fd07"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_amd64.tar.gz"
      sha256 "26456ec63abaef69a201ced613e01dc9c0489e3658f20d414ac66618c7e8573b"
    else
      url "https://github.com/Insajin/autopus-adk/releases/download/v#{version}/autopus-adk_#{version}_linux_arm64.tar.gz"
      sha256 "ba5438f8f2c2a77285a2dc46020afab86280a385291f76327ba9aa3722d90b91"
    end
  end

  def install
    bin.install "auto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto version")
  end
end
