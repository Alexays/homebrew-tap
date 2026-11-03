cask "lilo" do
  version "0.15.0"
  sha256 "9dbe15107ab8f3e800980abb005fcebb2f879c500998ce1074069cdb1c40b8e0"

  url "https://github.com/Alexays/Lilo/releases/download/v#{version}/Lilo.dmg"
  name "Lilo"
  desc "Native WebKit browser with Spaces, Chrome extensions and terminal tabs"
  homepage "https://getlilo.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Lilo.app"

  zap trash: [
    "~/Library/Application Support/Lilo",
    "~/Library/Caches/fr.arouillard.lilo",
    "~/Library/HTTPStorages/fr.arouillard.lilo",
    "~/Library/Preferences/fr.arouillard.lilo.plist",
    "~/Library/Saved Application State/fr.arouillard.lilo.savedState",
    "~/Library/WebKit/fr.arouillard.lilo",
  ]
end
