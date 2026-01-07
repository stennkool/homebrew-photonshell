cask "photonshell" do
  version "0.0.1-a14"
  sha256 "af8a72b90f0831de3bf790a1dca7d116e213513dccacc6b9ee1d3f280858f0d2"

  url "https://www.photonshell.com/releases/PhotonShell-#{version}-macos-arm64.dmg"
  name "PhotonShell"
  desc "Next-generation AI-powered terminal emulator"
  homepage "https://www.photonshell.com"
  auto_updates true

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
