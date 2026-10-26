# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.9"

  on_arm do
    sha256 "613295059313bb5dd811d67469ca330568895d8822554876bc768409a5880189"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-desktop-v0.1.9-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "801ae70677125048e5e35075447fabc99e85e16b4b8b1ee5e99c5842abbde7a1"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-desktop-v0.1.9-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
