# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.0-beta1"

  on_arm do
    sha256 "baaf56ac655a47746f8c4ec9dfab1080282c833835750b2dd2fb8142d059974b"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-desktop-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "6592e74cb94033950f17fd2afcc148a3dc832dda28a1dc78301f5ac63a19654e"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-desktop-x86_64-apple-darwin.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
