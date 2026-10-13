# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-cli-v0.1.5-macos-aarch64.tar.gz"
      sha256 "d8fe502a342f42f12cc9b09b024a859eb498fef32442ffd57943aef8425dc07a"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-cli-v0.1.5-macos-x86_64.tar.gz"
      sha256 "3871f3f157cfd7c0f1a6672acea0424c28bcbc66854ea296992db6fa55965a84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-cli-v0.1.5-linux-aarch64.tar.gz"
      sha256 "05d3d26cf42b4cdd871e3b89d753ee5046cec12972ee05c504f4baa76ae35ad9"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.5/clip9-cli-v0.1.5-linux-x86_64.tar.gz"
      sha256 "20f4a8ee0ab5146f26bb196dea3555bb5eb47fd951dab8848d51812c4ce62f83"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
