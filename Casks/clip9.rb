# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.1"

  on_arm do
    sha256 "52ef9a199de0dd97bfe68a0aa47a717973776892702b5c45da79980da62e6e27"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-desktop-v0.1.1-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "6389cf451108a4ee6a82f9e9a130b8bc237e4c46e213003fc3c530e4131d0f5a"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-desktop-v0.1.1-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
