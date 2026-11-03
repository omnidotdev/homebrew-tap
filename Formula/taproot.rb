class Taproot < Formula
  desc "A pure Rust library and server that auto-generates a full GraphQL API from a PostgreSQL database."
  homepage "https://taproot.omni.dev"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-aarch64-apple-darwin.tar.gz"
      sha256 "e0b67b5ece54b0ce7ecd709eb60c78b7b66422a65acbf01d1546964bdf27a789"
    end
    on_intel do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-x86_64-apple-darwin.tar.gz"
      sha256 "115b757c1bc85caf861af1c74089361b272cd9964bc4e418d91139b023979cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a023259461ad9c6627c94eee05ee4395475f44f7f3e279e10d4a913538946de0"
    end
    on_intel do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1f30b6251d85e5ec54ac8dda404216bf340d18efe7a405bb1059ac5b47fbded"
    end
  end

  def install
    bin.install "taproot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taproot --version")
  end
end
