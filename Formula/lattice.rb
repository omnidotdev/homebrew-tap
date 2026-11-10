class Lattice < Formula
  desc "Federated GraphQL gateway for the Omni ecosystem."
  homepage "https://lattice.omni.dev"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.4.0/lattice-aarch64-apple-darwin.tar.gz"
      sha256 "bf2b61ff0298138c1f73a24998ab6fdf00087d22153b9b7406446a649d17c4a1"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.4.0/lattice-x86_64-apple-darwin.tar.gz"
      sha256 "27327eae2c69ee9605bd906dd685f66c1c00c3a5fdf7a63e702c660385b47a8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.4.0/lattice-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f173d6a1fb77e1b70fb4ade03cd09481f317396c11e8f8686684dc22eff4a4da"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.4.0/lattice-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bb07c833f451f6e29ce45a03d0610ef25c38a6ce2c7557d9938b63280f96077"
    end
  end

  def install
    bin.install "lattice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lattice --version")
  end
end
