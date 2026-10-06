cask "activity-plus" do
  version "0.2.8"
  sha256 "d8a5dd0c945fb51bd20691cd38c53f9f0883a632f50b3c6d471aade949f1e1b0"

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
