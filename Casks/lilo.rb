cask "lilo" do
  version "0.17.0"
  sha256 "249bf88ad31821e8b37fda3ceafa9c5a2ef0790f05f7222b4603bfa474241458"

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
