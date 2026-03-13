# typed: false
# frozen_string_literal: true

class AutopusMcpServer < Formula
  desc "Autopus MCP Server - Claude Code MCP plugin for Autopus platform integration"
  homepage "https://github.com/insajin/autopus-bridge"
  url "https://github.com/Insajin/autopus-bridge/releases/download/v1.22.2/autopus-mcp-server_1.22.2_darwin_arm64.tar.gz"
  sha256 "4b840466ed3bf37da7e12770b1f80dc8acdf6e9ca1b4a93b234a429f89bd3a69"
  version "1.22.2"
  license "MIT"

  disable! date: "2026-03-13", because: "it has been replaced by a Homebrew cask", replacement_cask: "insajin/tap/autopus-mcp-server"

  def install
    odie "autopus-mcp-server has moved to a Homebrew cask. Install with: brew install --cask insajin/tap/autopus-mcp-server"
  end

  test do
    assert_match "autopus-mcp-server", shell_output("brew info --cask insajin/tap/autopus-mcp-server")
  end
end
