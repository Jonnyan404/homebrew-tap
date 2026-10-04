# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.2"

  on_arm do
    sha256 "9bb43cd4afc6bf1e4a2a20e4a0689e0ae1c3cab8a662a5972a0327283f405fb0"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-desktop-v0.1.2-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "a4a85bf2af86952ad322ac416d33e587c638e9a29f8de7e4c26959c66274852c"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-desktop-v0.1.2-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
