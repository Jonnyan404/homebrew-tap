# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.0-beta2"

  on_arm do
    sha256 "b23b25171d26005898e1495770237ab2c367693d4800c26ab1ce2e204432ba93"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-desktop-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "683b19930b437a1d5b76fc0d883aed00bf58aaf4faf82c52ccf30c1e08540966"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-desktop-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
