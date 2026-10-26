# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.8"

  on_arm do
    sha256 "d04e56c9fbac41f54297b47d6b476f0e65ca9b642b95f67386adc923ecfe39d4"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-desktop-v0.1.8-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "404b5b0a9f68525037d6ffaa6442f2df2b4e00141b40f5a399336da2dc7af0b3"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-desktop-v0.1.8-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
