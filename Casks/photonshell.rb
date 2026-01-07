cask "photonshell" do
  version "0.0.1-a15"
  sha256 "e4721d7ba18039bd4433637ca79823634a1b9f60dbc5a85f4e4c8383ca998b94"

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
