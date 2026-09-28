# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
cask "clip9" do
  version "0.1.0-beta3"

  on_arm do
    sha256 "99908dc4446ee36e27221f9d84fab8c0423774f4f264713ae3b1a94be1b87969"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-desktop-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "24e3f6fe0f142aacaf36fce04d3963cb193983f51e1ccf39164088e315b13ce8"
    url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-desktop-macos-x86_64.dmg"
  end

  name "clip9"
  desc "自托管的跨设备剪贴板（桌面端，自带服务端）"
  homepage "https://github.com/Jonnyan404/clip9"

  app "clip9.app"
end
