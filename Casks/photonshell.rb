cask "photonshell" do
  version "0.0.1-a31"
  sha256 "fa1eb86a15a7888193f3e428b335d89e12b7d1c11eee8bf3c9ee903a1ab3b7c8"

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
