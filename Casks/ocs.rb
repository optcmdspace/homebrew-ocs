cask "ocs" do
  version "0.1.0"
  sha256 "eb117e942d48b69fbcfdb0cb87e18bf4d2cd9fce869c6e48e9d3d08c298d91bb"

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
