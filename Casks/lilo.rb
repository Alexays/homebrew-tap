cask "lilo" do
  version "0.12.0"
  sha256 "7f56a124bddc3963e91dcf6d0894a48e1746dc8819c7e53d6ae3671e6e1810cd"

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
