# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.6"

  on_arm do
    sha256 "f9edb5068f0f37b04cdba5332cd60a0ce3bd4ae5c7d9110c498626ee1167774c"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-desktop-v0.1.6-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "9dea2d63eed0664e7d0d2b5e34f0b5f00a3f0838bea15c69bd53d8621ed1de84"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-desktop-v0.1.6-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
