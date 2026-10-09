# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-cli-v0.1.4-macos-aarch64.tar.gz"
      sha256 "b1d4c0363669ba25a5551ea371a01610fd52e050ceabda5b3ae0ac862a9cef40"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-cli-v0.1.4-macos-x86_64.tar.gz"
      sha256 "4a72200ec85f6d77e15dbe81c0bafde61e5f3040e692bd5d9c659432855ce4b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-cli-v0.1.4-linux-aarch64.tar.gz"
      sha256 "fad6de059b3458aa089255933733462395b2d9b500c94d29cf5dcd6422098b66"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.4/clip9-cli-v0.1.4-linux-x86_64.tar.gz"
      sha256 "c974a2d6d994c72de0af46a5399044643ece12ff2b0ec8d5d40647df4bdec885"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
