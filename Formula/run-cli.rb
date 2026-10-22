class RunCli < Formula
  desc "Self-hosting made simple"
  homepage "https://run.omni.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-aarch64-apple-darwin.tar.gz"
      sha256 "089466b7d872a63821f9306b15774f33a3f4ce0384ed2de817d41657887c81b7"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-x86_64-apple-darwin.tar.gz"
      sha256 "9d48e4036cc3261aeb266ac963976f76512dd14ce7b28499e251f9e0d4faa120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "752f6132d97f8c3aa386e706cc52134ce775152a4e47ade03468cda1aa9d80ff"
    end
    on_intel do
      url "https://github.com/omnidotdev/run-cli/releases/download/v0.1.0/run-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5889e329b6d16e5e7b89d1b6aec8ba686d47a5ac9b2418875bbeb121c58e955d"
    end
  end

  def install
    bin.install "run"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/run --version")
  end
end
