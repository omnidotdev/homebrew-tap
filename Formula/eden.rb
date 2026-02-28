class Eden < Formula
  desc "Developer onboarding preflight checks"
  homepage "https://eden.omni.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/eden-cli/releases/download/v#{version}/eden-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/omnidotdev/eden-cli/releases/download/v#{version}/eden-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/eden-cli/releases/download/v#{version}/eden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/omnidotdev/eden-cli/releases/download/v#{version}/eden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "eden"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eden --version")
  end
end
