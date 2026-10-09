# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.4"

  on_arm do
    sha256 "3743efd83b87c89267902464da7558a2056129123dfdbf536a6deca46a50d340"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-desktop-v0.1.4-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "3bdaec51225c194006863d59365204e27c1c8e922bb407d213a04b480578a9ac"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-desktop-v0.1.4-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
