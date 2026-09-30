# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1-beta3"

  on_arm do
    sha256 "22b9865869734bb7c7f98cfdd176b6ed6e76b4cac363e5c7460f58d52d74060d"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-desktop-v0.1.1-beta3-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "bb7f83eae5e4067fdfbf4714ea4c8057dd9e1a348dc4b468616ccebbd59377c6"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-desktop-v0.1.1-beta3-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
