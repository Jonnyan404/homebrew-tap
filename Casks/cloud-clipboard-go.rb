cask "cloud-clipboard-go" do
  version "v6.4"
  sha256 "feea2c2c2669b7d9b14ec8ce9e6f87e372ebbd39b789536bb2d1f00c05e0b21b"
  
  url "https://github.com/jonnyan404/cloud-clipboard-go-launcher/releases/download/#{version}/cloud-clipboard-go-#{version}.dmg"
  name "cloud-clipboard-go"
  desc "跨平台云剪贴板启动器"
  homepage "https://github.com/jonnyan404/cloud-clipboard-go-launcher"
  
  app "cloud-clipboard-go.app"
  
  zap trash: [
    "~/Library/Application Support/com.jonnyan404.cloudclipboard",
    "~/Library/Preferences/com.jonnyan404.cloudclipboard.plist",
    "~/Library/Caches/com.jonnyan404.cloudclipboard",
  ]
end