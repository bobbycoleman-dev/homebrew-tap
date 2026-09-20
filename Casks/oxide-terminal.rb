cask "oxide-terminal" do
  version "0.5.6"
  sha256 "b1f7be0ab6b62d68fc51a6c58bdacfad8941a3b041164081b37ebb2ce3d9088e"

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
