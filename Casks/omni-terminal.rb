cask "omni-terminal" do
  version "0.2.1"
  sha256 "90b9a1e424c89fcdb553cc8d6c5f8c34f332c8445c6b18e2443fd11ab273b8a3"

  url "https://github.com/omnidotdev/terminal/releases/download/v#{version}/OmniTerminal-v#{version}.dmg"
  name "Omni Terminal"
  desc "GPU-accelerated terminal emulator built to run everywhere"
  homepage "https://terminal.omni.dev"

  app "OmniTerminal.app"

  zap trash: [
    "~/.config/omni/terminal",
    "~/Library/Caches/dev.omni.Terminal",
    "~/Library/Preferences/dev.omni.Terminal.plist",
  ]
end
