cask "omni-terminal" do
  version "0.1.1"
  sha256 "7cdbb890827c626dd278eeed18ad5007ff3025e9bbe9db724909fe82e9f507d1"

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
