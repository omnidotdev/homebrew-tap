cask "omni-terminal" do
  version "0.2.4"
  sha256 "5078e6f0ac0856354314ee62efd9c733771f2ba5ef6a61e04ecbfa86f7ab58f4"

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
