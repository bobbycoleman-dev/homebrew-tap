cask "oxide-terminal" do
  version "0.6.1"
  sha256 "3acc5d7999c7680db11858ee353fd0844cddadd2f2a82e12a7cf2fe48e1fb1ff"

  url "https://github.com/bobbycoleman-dev/oxide/releases/download/v#{version}/Oxide-#{version}.dmg"
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
