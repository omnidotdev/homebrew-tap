class Kiln < Formula
  desc "Zero-config source-to-image container builder"
  homepage "https://kiln.omni.dev"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.2.0/kiln-aarch64-apple-darwin.tar.gz"
      sha256 "15c75b48998db4cb688d8f863a950f6c6998d3f8611112354773bf1df92dcafa"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.2.0/kiln-x86_64-apple-darwin.tar.gz"
      sha256 "3fe49eb604fefd3bf36d9e958f7f064c0607ef5773863cb32a09de236d031bd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.2.0/kiln-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d67921c07a7d3d587837007019a9554b5675446d1d23f277a87fc29862473602"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.2.0/kiln-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed550367c9b0b9905e56ab15c3597c3a55d0c51608d83b000bf40e704b039c78"
    end
  end

  def install
    bin.install "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
