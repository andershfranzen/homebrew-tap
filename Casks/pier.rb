cask "pier" do
  version "0.4.0"
  sha256 "7291e2254357073e33b2822b2637810f3efa53176c41ccb6d1f915b41a17556f"

  url "https://afive.dev/downloads/pier/Pier-#{version}.zip"
  name "Pier"
  desc "Menu-bar Docker fleet monitor over SSH"
  homepage "https://afive.dev/pier"

  depends_on macos: :sonoma

  app "Pier.app"

  uninstall quit: "dk.afive.pier"

  zap trash: [
    "~/Library/Application Support/DockGlance",
    "~/Library/Application Support/Pier",
    "~/Library/Preferences/dk.afive.pier.plist",
  ]
end
