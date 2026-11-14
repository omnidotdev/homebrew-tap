class Fractal < Formula
  desc "CLI for Fractal, the Omni deployment platform"
  homepage "https://fractal.omni.dev"
  version "0.1.0.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v12/fractal-darwin-arm64"
      sha256 "37fe0ceefaf31f3577d43d06f054078d8c58bcaefca9e4563a7e4b6c3c9abdcb"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v12/fractal-darwin-amd64"
      sha256 "119b3d83ddb583e3cb2d799d60e19992307a93c5953217342204b51b2f3f016e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v12/fractal-linux-arm64"
      sha256 "c21d785aeed80d8ffc0b671147414caba561a7300fedc1ed25519710d74a09dd"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v12/fractal-linux-amd64"
      sha256 "81e699c92e02d43bb2e5295da6638dee40de57138bb8ead820619396dc8c4d1d"
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
