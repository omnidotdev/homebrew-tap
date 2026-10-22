class RunCli < Formula
  desc "Self-hosting made simple"
  homepage "https://run.omni.dev"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.1/run-aarch64-apple-darwin.tar.gz"
      sha256 "c20d5211b8fe9688c521e265a71e6b8b11c9cb9169b02df60f99555444879471"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.1/run-x86_64-apple-darwin.tar.gz"
      sha256 "d72ede3882c8f49ec5143d989cc9c970286c07b77930e013b437f366da91cacb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.1/run-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6823cd165a88827cfb9a0f76b72cd57f3bc61536a983167077c593a2c9f0d9fa"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.1/run-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d78ef84f3bae046af79a43b9e2f79a84e11e8b2fa47bd091e19ae20980fb766"
    end
  end

  def install
    bin.install "run"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/run --version")
  end
end
