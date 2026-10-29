cask "lilo" do
  version "0.11.0"
  sha256 "68c67b1aed06d5a071102da0cb999f050e977599830b4116b64a17ee1c2cf378"

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
