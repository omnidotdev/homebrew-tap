class OmniCli < Formula
  desc "Agentic CLI for the Omni ecosystem"
  homepage "https://cli.omni.dev"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-aarch64-apple-darwin.tar.gz"
      sha256 "09dc344de522b3bbefe4e508ee2e7ee20f2d898a4c0d00e0d2761780ab4c2336"
    end
    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-x86_64-apple-darwin.tar.gz"
      sha256 "61275a578ac73b183ba2c4b6c66c0673d9d3e05b50e981908e5b2bc8760b60af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58ed7a04a460d3b6cf1806552aa180984db0e89e38f8b0bbd8906edb9b0da192"
    end
    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3bb95a7fb71ffc7556a8bf73abd15c13014ce930f2f2af16e1aa29112fc2790"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni --version")
  end
end
