class Kiln < Formula
  desc "Zero-config source-to-image container builder"
  homepage "https://kiln.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-aarch64-apple-darwin.tar.gz"
      sha256 "f7d5fbc948dd0271bd9647a8bcbaa6c14c07eb9ab886f059a9c0726a1369fcba"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-x86_64-apple-darwin.tar.gz"
      sha256 "f3ceb031116bb629688812e8bd15b8fc3fc4f7629bb52dffac6fd35de7b03c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7092650118f203d2e76d2f9328dab2e4815dcca1549f71eea1db7651c59d2563"
    end
    on_intel do
      url "https://github.com/omnidotdev/kiln/releases/download/v0.1.0/kiln-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea6e0fb49caa7d8b5b56476d8c2696df34a8990133102d365051e74bea88468b"
    end
  end

  def install
    bin.install "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
