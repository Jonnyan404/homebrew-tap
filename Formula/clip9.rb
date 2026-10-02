# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-cli-v0.1.1-macos-aarch64.tar.gz"
      sha256 "2955ccd7b2597e917724dec1338ec743ac2f39b8e15cdcba0c2db7ada0907f4d"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-cli-v0.1.1-macos-x86_64.tar.gz"
      sha256 "812ed110953d5850bfbf113653ae5663aaafbbd3702fedc9227f64bed9bdbd26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-cli-v0.1.1-linux-aarch64.tar.gz"
      sha256 "88438c49820481740436d7f423b3c240bd8825106bae29b898a9b2d46951ec61"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1/clip9-cli-v0.1.1-linux-x86_64.tar.gz"
      sha256 "7fbac1e07345f195d9716042b7d7da6de0736a1e1b7a7cc2950722b836fa1fb2"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
