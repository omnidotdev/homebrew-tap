class OmniCli < Formula
  desc "Agentic CLI for the Omni ecosystem"
  homepage "https://cli.omni.dev"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v#{version}/omni-aarch64-apple-darwin.tar.gz"
      sha256 "f7722565e08f0682c5d7885c2068d87781d33681b9500c2aaa4f9378277e3bbe"
    end

    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v#{version}/omni-x86_64-apple-darwin.tar.gz"
      sha256 "b5ad33add1ffd559f2cbf34fe3d552e9367df1da86b739fd3e360e78f03bb97e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omnidotdev/cli/releases/download/v#{version}/omni-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3452758dc5d07f20bf5cff865f3fb21b3704c14d98ab1212d3a6d7d50d04715f"
    end

    on_intel do
      url "https://github.com/omnidotdev/cli/releases/download/v#{version}/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68667d875de0e85e0949aa39c3dabbe7c2555aea9436cb8c65a9485dbc0a9586"
    end
  end

  def install
    bin.install "omni"
  end
end
