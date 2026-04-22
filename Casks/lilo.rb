cask "lilo" do
  version "0.1.0"
  sha256 "REPLACE_WITH_SHA256_OF_DMG"

  url "https://github.com/Alexays/Lilo/releases/download/v#{version}/Lilo.dmg"
  name "Lilo"
  desc "macOS browser with native WebKit engine and Chrome extension support"
  homepage "https://github.com/Alexays/Lilo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lilo.app"

  zap trash: [
    "~/Library/Application Support/Lilo",
    "~/Library/Caches/Lilo",
    "~/Library/Preferences/fr.arouillard.lilo.plist",
  ]
end
