cask "optcmdspace" do
  version "0.5.0"
  sha256 "0b26c3b5be6c93f5ec1e0a5b4a916850598c32a64305f152893e888774f22f4d"

  url "https://github.com/optcmdspace/ocs-macos/releases/download/v#{version}/OptCmdSpace-#{version}.dmg"
  name "OCS"
  desc "Quick capture tool"
  homepage "https://optcmd.space/"

  auto_updates true
  depends_on macos: :sonoma

  app "OptCmdSpace.app"

  postflight do
    system_command "/usr/bin/open", args: ["-a", "OptCmdSpace"]
  end

  zap trash: [
    "~/Library/Application Support/OCS",
    "~/Library/Preferences/space.optcmd.OCS.plist",
  ]
end
