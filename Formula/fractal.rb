class Fractal < Formula
  desc "CLI for Fractal, the Omni deployment platform"
  homepage "https://fractal.omni.dev"
  version "0.1.0.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v13/fractal-darwin-arm64"
      sha256 "8e5961a0c779df75fa274b0d95c0ca7d5ee53a43a6cca9676542e9ec9e831b1f"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v13/fractal-darwin-amd64"
      sha256 "e24d531b1234c68fc9ed4dcb5762418fccfce2bde3f86ed2af6b20f232bf3632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v13/fractal-linux-arm64"
      sha256 "14c491a965a3c41293b33aa81f4f51bdfbf46b22cf9fd50aa78db68618e1d75f"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v13/fractal-linux-amd64"
      sha256 "d4e84b2aa8bf9ce4e907e3b14c8078c79d03b5dd6b613479a58d4299a60a3069"
    end
  end

  def install
    # Release assets are raw binaries named per platform
    bin.install Dir["fractal-*"].first => "fractal"
  end

  test do
    assert_match "build #{version.to_s.split(".").last}", shell_output("#{bin}/fractal --version")
  end
end
