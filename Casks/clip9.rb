# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1-beta2"

  on_arm do
    sha256 "e53f3047d2f2deb450515d518a6af5914a60645b2b19674548a71be8b33871cd"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-desktop-v0.1.1-beta2-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "b4a79a236e981b8f651699370e8ddd987d54a8c94c9e52a96691f214411e4e63"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-desktop-v0.1.1-beta2-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
