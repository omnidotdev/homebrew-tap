class Fractal < Formula
  desc "CLI for Fractal, the Omni deployment platform"
  homepage "https://fractal.omni.dev"
  version "0.1.0.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v11/fractal-darwin-arm64"
      sha256 "f10bfd13923c2597cf937e2b55a05de39ee7cca7e8c3669a7229b88a17824685"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v11/fractal-darwin-amd64"
      sha256 "bd15c6ee69405cb9b013bd46b3c073815004ed4eaa29b39a285961639602ea0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v11/fractal-linux-arm64"
      sha256 "10be337091a2a2df49a9ef6b556841c6b15ec953f3df134fa974cf2cb911a051"
    end
    on_intel do
      url "https://github.com/omnidotdev/fractal-cli/releases/download/cli-v11/fractal-linux-amd64"
      sha256 "10171632eceb0c5e90e86644d75625cc52aad5f0130d8eb1b6dd8eaa7f7d2a48"
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
