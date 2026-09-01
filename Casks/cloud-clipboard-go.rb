cask "cloud-clipboard-go" do
  version "v6.7"
  sha256 "c7a0faa881b86e63da38edea173a3c86192d1abdf0451bdeeb7d85072633b6ec"

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