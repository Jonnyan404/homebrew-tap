# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1-beta1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-macos-aarch64.tar.gz"
      sha256 "bc8880518311dfdce8997a175652ae7e7a2315c0c0ad43a873bfd7126983b30f"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-macos-x86_64.tar.gz"
      sha256 "ea866a0f79084f59499877ce7fcb793d2e9e4eaad849b42fa76bd57f54be6069"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-linux-aarch64.tar.gz"
      sha256 "0dd5bd0844df417add1925751fed24b4aa4c9a7aafd973f67d97719d6e4c3451"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-linux-x86_64.tar.gz"
      sha256 "d969c4ea0af321cceebf02708c218afa76b4d1169ba385d9702c3a0f4a502da9"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
