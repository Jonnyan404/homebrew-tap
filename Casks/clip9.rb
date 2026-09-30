# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1-beta1"

  on_arm do
    sha256 "98ce47c7833b3409a55aa1effcf8f1819b41b6e4bdcc87b6a8bb7a1483d481b9"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-desktop-v0.1.1-beta1-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "ce1a6a12115c9b6c5b9edf7ad3cf5b323b16cf3f74414347262bae13fc3a35e9"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-desktop-v0.1.1-beta1-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
