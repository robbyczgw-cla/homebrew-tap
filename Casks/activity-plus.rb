cask "activity-plus" do
  version "0.3.1"
  sha256 "5da99b08ef806bb0b4efbd0c04d36740a6be4ce6cd94e5495f33789fd8988dbf"

  url "https://github.com/robbyczgw-cla/activity-plus/releases/download/v#{version}/Activity+-#{version}.zip"
  name "Activity+"
  desc "System monitor that shows which app is responsible for the load"
  homepage "https://activityplus.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Activity+.app"
  binary "#{appdir}/Activity+.app/Contents/Resources/aplus"

  uninstall quit: "at.hifiteam.activityplus"

  zap trash: [
    "~/Library/Application Support/Activity+",
    "~/Library/Caches/at.hifiteam.activityplus",
    "~/Library/HTTPStorages/at.hifiteam.activityplus",
    "~/Library/HTTPStorages/at.hifiteam.activityplus.binarycookies",
    "~/Library/Preferences/at.hifiteam.activityplus.plist",
  ]
end
