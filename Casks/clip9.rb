# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.7"

  on_arm do
    sha256 "bb250f9dde2765fe366eaf2a9ec20461d67f3306f74db288cb371dff6b3840b5"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-desktop-v0.1.7-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "b4437a764dc7d2a72e30952be7528c279d51e8eeb3c1c42e431f1c2bb85c1389"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-desktop-v0.1.7-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
