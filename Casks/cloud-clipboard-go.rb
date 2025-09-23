cask "cloud-clipboard-go" do
  version "v6.5"
  sha256 "b41556aec0abeacbae13d92af588bbed870dcf7617bf5be4fea3be021ed8dcdd"

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