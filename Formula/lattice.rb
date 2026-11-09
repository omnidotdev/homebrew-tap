class Lattice < Formula
  desc "Federated GraphQL gateway for the Omni ecosystem."
  homepage "https://lattice.omni.dev"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.2.0/lattice-aarch64-apple-darwin.tar.gz"
      sha256 "4fc09a01783bffd6ef6a50c437084fc274d7e7a78598d7bdbc16d458111e3333"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.2.0/lattice-x86_64-apple-darwin.tar.gz"
      sha256 "73f59b36f58309dcdcdb795dea2adfe7072bf2631639d785de568906da89fd92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.2.0/lattice-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "818e30359ca3fbdbd424492a08d9a1533802d4bd3ecd196b8c6da8beb87fe9df"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.2.0/lattice-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f5e47d67c9d8656d4ff211662c47d9ae2800a2b5c8e39069566b25ee297c59d"
    end
  end

  def install
    bin.install "lattice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lattice --version")
  end
end
