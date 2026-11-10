class Gel < Formula
  desc "Declarative system management for Arch Linux"
  homepage "https://gel.omni.dev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.5.0/gel-aarch64-apple-darwin.tar.gz"
      sha256 "20929c3fae62bd2f2f4620200aad31d999097b6c911def3ffce5d7303859ec8c"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.5.0/gel-x86_64-apple-darwin.tar.gz"
      sha256 "f7691121b82a1afac077675c2c41ccbc49967a7f909c44bceab9137c02d2f490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.5.0/gel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8aaa93ddc91d0f935b91ab641d4a9917c30582c09346661e972d94979ecc8072"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.5.0/gel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0b6f35db3ca6d7b3c1d094914a3e9a7acbb58a38e0b8ef89b4617f88512695b"
    end
  end

  def install
    bin.install "gel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gel --version")
  end
end
