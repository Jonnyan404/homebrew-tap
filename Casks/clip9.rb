# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1-beta2"

  on_arm do
    sha256 "5fa9da770ef98ddda0c3900f0106f099207b1213bc760ae8a348c7f4983a9094"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-desktop-v0.1.1-beta2-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "2c3bcd4c7b862ec3b89eaaaecde82af0cb92b33cc7ca9b866470ffd4235e0ae1"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-desktop-v0.1.1-beta2-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
