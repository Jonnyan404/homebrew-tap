cask "cloud-clipboard-go" do
  version "v6.6"
  sha256 "1c3f17721f7a435fd17293e608ffc6b18b3ee51a106005eb463bf60faab7c96d"

  url "https://github.com/jonnyan404/cloud-clipboard-go-launcher/releases/download/#{version}/cloud-clipboard-go-#{version}-macOS-universal.dmg"
  
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