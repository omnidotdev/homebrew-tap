class Gel < Formula
  desc "Declarative system management for Arch Linux"
  homepage "https://gel.omni.dev"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.3.0/gel-aarch64-apple-darwin.tar.gz"
      sha256 "28ab4681275a070b647aade5072700fa7240944a437a2f5ce37b22f5a7df7bd9"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.3.0/gel-x86_64-apple-darwin.tar.gz"
      sha256 "81d70eeea91b4a164a7a7aad5ad6000f57951f468193c2897d92ff82bb9726ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/gel/releases/download/v0.3.0/gel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6328cb3f2a40958c24855b02042e96953fc4a9b022bc694fb812b151952ed6bd"
    end
    on_intel do
      url "https://github.com/omnidotdev/gel/releases/download/v0.3.0/gel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9049b039ccc98446c09fdb886e301d41e189eed799522ac8a5840692c9f88a65"
    end
  end

  def install
    bin.install "gel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gel --version")
  end
end
