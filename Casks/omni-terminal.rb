cask "omni-terminal" do
  version "0.2.2"
  sha256 "0b02b6aa6740b4d624351b7c41835c0882dd205af9320d406565c7c0f284e309"

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
