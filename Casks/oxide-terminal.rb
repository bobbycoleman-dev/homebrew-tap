cask "oxide-terminal" do
  version "0.5.8"
  sha256 "273fad77b2b513fa609b7abca159f40ee39813f21acf8e7eed70128aa471f2f8"

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
