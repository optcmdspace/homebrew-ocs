cask "optcmdspace" do
  version "0.4.0"
  sha256 "d46f4dced72cddc78229c66d97a58ec2a5e207f39e99150469f38c437f0707c0"

  url "https://github.com/optcmdspace/ocs-macos/releases/download/v#{version}/OptCmdSpace-#{version}.dmg"
  name "OCS"
  desc "Quick capture tool"
  homepage "https://optcmd.space/"

  app "OptCmdSpace.app"

  postflight do
    system_command "/usr/bin/open", args: ["-a", "OptCmdSpace"]
  end

  zap trash: [
    "~/Library/Application Support/OCS",
    "~/Library/Preferences/space.optcmd.OCS.plist",
  ]
end
