cask "photonshell" do
  version "0.0.1-a7"
  sha256 "e30fdbae2b491c0179dd6d1e68af8b2cd615dbaf562e8de2f6445093d6f692ab"

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
