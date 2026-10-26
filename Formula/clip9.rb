# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-cli-v0.1.9-macos-aarch64.tar.gz"
      sha256 "684eda192897138327f8d9ea9da06d97eb58e334c7944395c7ad8ff583e2dcc5"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-cli-v0.1.9-macos-x86_64.tar.gz"
      sha256 "b2807c7239390e41f80612dcc63a51c5dbb748864484bc35b4ca9ccb35a5a6f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-cli-v0.1.9-linux-aarch64.tar.gz"
      sha256 "47fb29482f8753574837570f7fcf116ed565d09068fef48b799a0bef624c879e"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.9/clip9-cli-v0.1.9-linux-x86_64.tar.gz"
      sha256 "377bb512105dc41f8247e027c669f10f0ee53b9c01c6dc2f907beb6a38f1df6f"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
