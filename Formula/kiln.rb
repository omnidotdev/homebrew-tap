class Kiln < Formula
  desc "Zero-config source-to-image container builder"
  homepage "https://kiln.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-aarch64-apple-darwin.tar.gz"
      sha256 "3d9e5d6a8fb3777845bceb2b9d1cd6a7ff75cdec520f4ba065052d3977edf1ad"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-x86_64-apple-darwin.tar.gz"
      sha256 "a8f32b2ca06218eb32e4679eb983bda1841ae53679065ffa1f71ae8c41815f34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec8ba0092fce3058752e2404e4364489e25612a792989cfc9e80216e89dbba27"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ac1cb745a7db21818024bb73cd620b9be574447332c030e80c40049a38f6a75"
    end
  end

  def install
    bin.install "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
