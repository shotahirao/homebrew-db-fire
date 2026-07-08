cask "db-fire" do
  version "0.1.12"
  sha256 "1c5f39f20ef1958a9261efbc293a7ca0149f804dd2a2c18ad752e26528519884"

  url "https://github.com/shotahirao/db-fire/releases/download/v#{version}/db-fire_#{version}_aarch64.dmg"
  name "db-fire"
  desc "A fast, lightweight, cross-platform database client built with Tauri"
  homepage "https://github.com/shotahirao/db-fire"

  deprecate! date: "2026-07-07", because: "it has moved to the shotahirao/tap tap; run `brew uninstall --cask db-fire && brew install --cask shotahirao/tap/db-fire`"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "db-fire.app"

  zap trash: [
    "~/Library/Application Support/com.shotahirao.db-fire",
    "~/Library/Caches/com.shotahirao.db-fire",
    "~/Library/Preferences/com.shotahirao.db-fire.plist",
    "~/Library/Saved Application State/com.shotahirao.db-fire.savedState",
  ]
end
