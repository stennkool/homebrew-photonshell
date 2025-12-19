cask "photonshell" do
  version "0.0.1-a8"
  sha256 "3376e0134cc45c5fa11ee4fbe1865fc4133777ec955dbe3f364053e45a7d8a84"

  url "https://photonshell.stennmedia.nl/releases/photonshell-#{version}-macos-arm64.dmg"
  name "PhotonShell"
  desc "Next-generation AI-powered terminal emulator"
  homepage "https://photonshell.stennmedia.nl"

  depends_on macos: ">= :ventura"

  app "photonshell.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/photonshell.app"],
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
