cask "optcmdspace" do
  version "0.2.0"
  sha256 "c71563317584a4853415cd237c609f20c5cbd26345ebcc794942157f5fdcc30a"

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
