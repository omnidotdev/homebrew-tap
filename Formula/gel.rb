class Gel < Formula
  desc "Declarative system management for Arch Linux"
  homepage "https://gel.omni.dev"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.4.0/gel-aarch64-apple-darwin.tar.gz"
      sha256 "1aeff81d3f6bc546d871872adfc295c3d2e16e2b7a8143cf7fea0d4ea7327eb8"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.4.0/gel-x86_64-apple-darwin.tar.gz"
      sha256 "c186eda7c03e9364324b3437901c5499836b8b7d8fcc77c06f108d7d3cfe110a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.4.0/gel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed4a13034c24ab786c6556f17683d1c75abc66997a64fa8a2b064b9064cd7311"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.4.0/gel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da4b17cedf9f76adf9a67bf4f1e3273428e71470a79b73203b00f1c12ad1c9ed"
    end
  end

  def install
    bin.install "gel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gel --version")
  end
end
