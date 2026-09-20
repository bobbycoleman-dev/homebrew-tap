cask "oxide-terminal" do
  version "0.5.5"
  sha256 "a4ec45fe38b5ef64fd011f08e7d5f62c4c92225ea15e255197e553408b903d12"

  url "https://github.com/bobbycoleman-dev/oxide/releases/download/v#{version}/Oxide-#{version}.dmg"
  name "Oxide"
  desc "Terminal emulator"
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
