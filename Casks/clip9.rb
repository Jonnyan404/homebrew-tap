# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.3"

  on_arm do
    sha256 "88de9dd6ccf08ab27f1620da286529ff2763edf2fefd0d0ad89f7447ce41a3cb"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-desktop-v0.1.3-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "e93f706af552bd53e3e03f4ee045c1aa65139d9ec2311c5953060fa8dda97431"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-desktop-v0.1.3-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
