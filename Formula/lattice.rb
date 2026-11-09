class Lattice < Formula
  desc "Federated GraphQL gateway for the Omni ecosystem."
  homepage "https://lattice.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.1.0/lattice-aarch64-apple-darwin.tar.gz"
      sha256 "48783a3588a27ddaaee1295df5fba49ac38d0aafab128bc76605ab80b4f31f77"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.1.0/lattice-x86_64-apple-darwin.tar.gz"
      sha256 "6dfab7625d1365b32cfb481eb29b6301fa7cd5d283ec427282a8c6d2b8afb921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.1.0/lattice-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cff23efcf32de9afd1497f0ebc2ed76ba06ecd60ce7efc8fe60f5bbe12be72e"
    end
    on_intel do
      url "https://github.com/omnidotdev/lattice/releases/download/v0.1.0/lattice-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ac34ce75fd661852342bac7ef7f4631e36bbb9ac501c2fab776f80a072dc95a"
    end
  end

  def install
    bin.install "lattice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lattice --version")
  end
end
