# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.0"

  on_arm do
    sha256 "c8610a4e713ff525664c2bbf89190cfed141c6281c9798fd32d988764290248e"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-desktop-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "8bc5c6ff1973aa7a80c6efcb9589a56994daf50d1d88f70c97e073df591049c6"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-desktop-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
