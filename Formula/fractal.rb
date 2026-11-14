class Fractal < Formula
  desc "CLI for Fractal, the Omni deployment platform"
  homepage "https://fractal.omni.dev"
  version "0.1.0.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v14/fractal-darwin-arm64"
      sha256 "19ae2aba0e1d4c79a7adb838d705d8abbc2f16dd1921ccf0b5ea1a2e16685bd6"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v14/fractal-darwin-amd64"
      sha256 "6fe4c7ef578a98456c115f5b64db19812c9bc257aa05b91f73d4cedc0cb23f74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v14/fractal-linux-arm64"
      sha256 "4aaeac643cb2fd4da5b95e6de8ce41f23c366b29bcfc7889fa42849d9bcc361a"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v14/fractal-linux-amd64"
      sha256 "214858ad092fa00e6f4309dba0adee0aa81e4733eb80499fab72cdd7efee1142"
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
