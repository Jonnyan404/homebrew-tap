# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.0-beta3"

  on_arm do
    sha256 "9b445a382ba948a96202449455c848a99754a84b5b788e8f74a8b3ff271a4fad"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-desktop-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "02ba6cc41e10209ecf292301f5d04a55cda78ddbbb917c581d6c1273338d3496"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-desktop-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
