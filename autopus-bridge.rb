# typed: false
# frozen_string_literal: true

class AutopusBridge < Formula
  desc "Autopus Local Agent Bridge - Connect local development agents to Autopus platform"
  homepage "https://github.com/insajin/autopus-bridge"
  license "MIT"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Insajin/autopus-bridge/releases/download/v1.0.1/autopus-bridge_1.0.1_darwin_arm64.tar.gz"
      sha256 "b3064db14d07aaa2b4393ef86b3983ad52f8f44841c8b327c798d6d993f2d865"
    end

    on_intel do
      url "https://github.com/Insajin/autopus-bridge/releases/download/v1.0.1/autopus-bridge_1.0.1_darwin_amd64.tar.gz"
      sha256 "de68aa8c7a5124390033e09098545dc4947ca104ec68606efb6bccc6a0244cbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Insajin/autopus-bridge/releases/download/v1.0.1/autopus-bridge_1.0.1_linux_arm64.tar.gz"
      sha256 "2bc4fb25d67e8d0e30fa1ba7bbb9e726e54f3122737b33c47d09b7903a572a39"
    end

    on_intel do
      url "https://github.com/Insajin/autopus-bridge/releases/download/v1.0.1/autopus-bridge_1.0.1_linux_amd64.tar.gz"
      sha256 "9beef14a5f355288c0e2fadd6cb477751c34f18f297e58e8f3404bf0fefb27e8"
    end
  end

  def install
    bin.install "autopus-bridge"
  end

  test do
    system "#{bin}/autopus-bridge", "version"
  end
end
