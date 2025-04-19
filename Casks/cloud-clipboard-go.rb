cask "cloud-clipboard-go" do
  version "v6.2"
  sha256 "4795523fdd99047c08d1cde0c3be3b7ac828ec72328e34c903f499912f4459a5"
  
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