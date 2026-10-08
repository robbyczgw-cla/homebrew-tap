cask "activity-plus" do
  version "0.3.0"
  sha256 "3c13d655144bfbf590d91b51b68f7bb20fe2c1d96ab9422d83e63cef2d69b633"

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
