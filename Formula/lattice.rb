class Lattice < Formula
  desc "Federated GraphQL gateway for the Omni ecosystem."
  homepage "https://lattice.omni.dev"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.3.0/lattice-aarch64-apple-darwin.tar.gz"
      sha256 "cf3e72e9b139176c9f8226ee01a9de9e12ab8d3f32a57f7b7d377c6412260b59"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.3.0/lattice-x86_64-apple-darwin.tar.gz"
      sha256 "1f9a753710a097d059e77ff46871354210ed39bf35a677a1a5e51befa3d6f1b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.3.0/lattice-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67327fca942dff16d7fc3aa10b6a403dc8ced7d0666ef191ffbb71835c3f5a68"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.3.0/lattice-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42ee27ce3a8484f5cbc22ac837bb33fc6d2a3888879cb5a16928c3577c8d96b2"
    end
  end

  def install
    bin.install "lattice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lattice --version")
  end
end
