class Gel < Formula
  desc "Declarative system management for Arch Linux"
  homepage "https://gel.omni.dev"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.2.1/gel-aarch64-apple-darwin.tar.gz"
      sha256 "af5b54f7d54d42d27bd7ed503aea9380b68e859e969c00be109d52b12416b00c"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.2.1/gel-x86_64-apple-darwin.tar.gz"
      sha256 "a44090a16cdf23340b9554f65b1f363052e7b4e6095668f03b55f3bb17d13a95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.2.1/gel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c2db42d2da8ffac756d4e5d0df6e075144d41abcf7d740339890665f5010e1f"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.2.1/gel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c74ebed5c5e4ca8f1a2fc17580f68fddfe45520351e173996d0aa0862fb6354"
    end
  end

  def install
    bin.install "gel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gel --version")
  end
end
