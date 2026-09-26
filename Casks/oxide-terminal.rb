cask "oxide-terminal" do
  version "0.6.3"
  sha256 "f4c8ca3060c65af559bc1585f5edeb42bfc97041147a007411d859f78abfc43e"

  url "https://github.com/oxide-terminal/oxide/releases/download/v#{version}/Oxide-#{version}.dmg"
  name "Oxide"
  desc "GPU-rendered terminal emulator written in Rust"
  homepage "https://oxideterminal.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Oxide.app"

  zap trash: [
    "~/.config/oxide",
    "~/Library/Application Support/dev.bobbycoleman.oxide",
    "~/Library/Caches/dev.bobbycoleman.oxide",
    "~/Library/Preferences/dev.bobbycoleman.oxide.plist",
    "~/Library/Saved Application State/dev.bobbycoleman.oxide.savedState",
  ]
end
