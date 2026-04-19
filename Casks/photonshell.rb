cask "photonshell" do
  version "0.0.1-a27"
  sha256 "09e23aad4249b05b61f43a3d92acdfbe8ebfd9058bdbdfbc51761cab736cf9c8"

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
