class OmniCli < Formula
  desc "Agentic CLI for the Omni ecosystem"
  homepage "https://cli.omni.dev"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-aarch64-apple-darwin.tar.gz"
      sha256 "1eb64bee93075bd6f641fe02dddeea48191c2099b256b5395bcf1d27bc96d5cc"
    end
    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-x86_64-apple-darwin.tar.gz"
      sha256 "70db1ca16bf48c445afbac48be67eb60b0fdcb413c37bae3372f7e0f9bb99868"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9d28a8b122955c50ee7bd8fa6d569c82377d362eadf5c8da181918c669f3c21"
    end
    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v0.6.0/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a637160ea7022c8489d47bb49b92e6ebe118cf6432fb626bf0e1670cba387ca"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni --version")
  end
end
