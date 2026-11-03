class Taproot < Formula
  desc "A pure Rust library and server that auto-generates a full GraphQL API from a PostgreSQL database."
  homepage "https://taproot.omni.dev"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-aarch64-apple-darwin.tar.gz"
      sha256 "769efe282001abd96dc691a13c0a7e6c9fccd86adcca89e2e5b98b5c07d9bf60"
    end
    on_intel do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-x86_64-apple-darwin.tar.gz"
      sha256 "db55d39b27ec3876b11522a67356857f446e034f58878b90466de2fd6898a971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59a90201b4f8dd8f0753150b969a4817981e6c7caa9cf3c7f3da9b1fb5f63ec3"
    end
    on_intel do
      url "https://github.com/omnidotdev/taproot/releases/download/v0.2.0/taproot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dd7efd1d50878c004c6ff839d98bee1d83e0ad85ef35d4c03954cc20f65f197"
    end
  end

  def install
    bin.install "taproot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taproot --version")
  end
end
