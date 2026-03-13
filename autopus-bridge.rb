# typed: false
# frozen_string_literal: true

class AutopusBridge < Formula
  desc "Autopus Local Agent Bridge - Connect local development agents to Autopus platform"
  homepage "https://github.com/insajin/autopus-bridge"
  url "https://github.com/Insajin/autopus-bridge/releases/download/v1.22.2/autopus-bridge_1.22.2_darwin_arm64.tar.gz"
  sha256 "4a1d1e8acc65d2f515ca5e56604760c70cd4cfcd24a20bd0dba2ef46234c2193"
  version "1.22.2"
  license "MIT"

  disable! date: "2026-03-13", because: "it has been replaced by a Homebrew cask", replacement_cask: "insajin/tap/autopus-bridge"

  def install
    odie "autopus-bridge has moved to a Homebrew cask. Install with: brew install --cask insajin/tap/autopus-bridge"
  end

  test do
    assert_match "autopus-bridge", shell_output("brew info --cask insajin/tap/autopus-bridge")
  end
end
