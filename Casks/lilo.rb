cask "lilo" do
  version "0.1.2"
  sha256 "8ee451bca6f3e80b8f96f1857f726aeb6d888369d5e13092eb90026bf9f3b53d"

  url "https://github.com/Alexays/Lilo/releases/download/v#{version}/Lilo.dmg"
  name "Lilo"
  desc "Native WebKit browser with Spaces, Chrome extensions and terminal tabs"
  homepage "https://getlilo.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

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
