class Harmony < Formula
  desc "Templating and syncing engine for project files"
  homepage "https://harmony.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/harmony-cli/releases/download/v0.1.0/harmony-aarch64-apple-darwin.tar.gz"
      sha256 "2f81368a2c78b932ccb8d47b64afdb1eb2916c816bb1bfcdf19f393c1c95563f"
    end
    on_intel do
      url "https://github.com/omnidotdev/harmony-cli/releases/download/v0.1.0/harmony-x86_64-apple-darwin.tar.gz"
      sha256 "e706f3159a845267ca13c608ec51bad478c55bb2d9007bffef37e1221b8399d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/harmony-cli/releases/download/v0.1.0/harmony-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "230987946c79c572246071bc1492bf9099c656b8cd2d666c818793d09a56a543"
    end
    on_intel do
      url "https://github.com/omnidotdev/harmony-cli/releases/download/v0.1.0/harmony-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f151bbc90b2e758fde2ffbd89404b35cbce453b7f669f2dc584ca2d1ddf5d07"
    end
  end

  def install
    bin.install "harmony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/harmony --version")
  end
end
