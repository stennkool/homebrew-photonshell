cask "photonshell" do
  version "0.0.1-a28"
  sha256 "57d7e0afc610dd8a8afb8ae5ba739a40c211975e0be885d5de58f657ed4a03f6"

  url "https://www.photonshell.com/releases/PhotonShell-#{version}-macos-arm64.dmg"
  name "PhotonShell"
  desc "Next-generation AI-powered terminal emulator"
  homepage "https://www.photonshell.com"
  auto_updates true

  depends_on macos: ">= :ventura"

  app "PhotonShell.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PhotonShell.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/photonshell",
    "~/Library/Preferences/nl.stennmedia.photonshell.plist",
    "~/Library/Caches/nl.stennmedia.photonshell",
    "~/Library/Logs/PhotonShell",
    "~/.photonshell",
  ]
end
