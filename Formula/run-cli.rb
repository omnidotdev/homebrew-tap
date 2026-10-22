class RunCli < Formula
  desc "Self-hosting made simple"
  homepage "https://run.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-aarch64-apple-darwin.tar.gz"
      sha256 "329fcb4a68cdef68e48e7d312e3d83d379c25ee97ec0aae062521661546fb133"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-x86_64-apple-darwin.tar.gz"
      sha256 "78b6085da9ff9d470c257b97c43610e5d4e29f3efac112a178c6f351bfb471c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df98aa274357f4e56b5c3be3deb7880d9a2313b2bc83adebfb9452eaa8045e00"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23c16566f73465f6a6e9b66a7e6cc9da962e402c28eaa7bc9690c438d8f08e08"
    end
  end

  def install
    bin.install "run"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/run --version")
  end
end
