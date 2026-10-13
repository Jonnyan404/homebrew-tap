# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.5"

  on_arm do
    sha256 "bbb8a6242de9f96624549b7cd3655e94f2d6c4fc32857d9b6673c6c83bf47c2d"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-desktop-v0.1.5-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "77fd3f17e29beb743bd452bb8f2008eda7710363f288e2c051145a8fe4c053de"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-desktop-v0.1.5-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
