cask "optcmdspace" do
  version "0.3.0"
  sha256 "782a5901481841d56bd7ccfced35ef00849ec624716c760a9b2d0dfb28c624fd"

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
