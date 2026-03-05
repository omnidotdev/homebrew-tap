cask "omni-terminal" do
  version "0.2.3"
  sha256 "6a33c4c13dee7eb2fd3c8c9c39cd1b740d8b264e07c96f5fec4e6f21b99167d3"

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
