# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1-beta1"

  on_arm do
    sha256 "50794f6acc18a538df63dbd86a9e2fdd27ef29b6c087872701c1343ea222456b"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-desktop-v0.1.1-beta1-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "bf71f5071339aa69dc701491fd61319cb054a77938c8e7ac5e728742030ae04c"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-desktop-v0.1.1-beta1-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
