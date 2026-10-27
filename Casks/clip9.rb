# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.2.0"

  on_arm do
    sha256 "11025432e7f85d2f43b6c231b459c9f40feaa1819f012bc93e9ff4c9cb56f2a3"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-desktop-v0.2.0-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "7751d2f2d47d2029aa072eb80e7ae4957a3c0137717702c89b38631844f3c436"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-desktop-v0.2.0-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
