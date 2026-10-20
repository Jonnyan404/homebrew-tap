# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-cli-v0.1.6-macos-aarch64.tar.gz"
      sha256 "54c1fa2d81cbdbd20eb728c38744266a58b1bbe6861180a9b6cc71714961e5eb"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-cli-v0.1.6-macos-x86_64.tar.gz"
      sha256 "6dace9a6cfe97bca0bfa5230f9130abda8f38be02509c4068347b4f1d788891f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-cli-v0.1.6-linux-aarch64.tar.gz"
      sha256 "2dc4584b053d9fb649497c0f59cc610221f1592c20ac4bb24e5a8fca70fa63af"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.6/clip9-cli-v0.1.6-linux-x86_64.tar.gz"
      sha256 "26510c150c1c94235a60ae22c80bd0a872f9c887850c9bd2717ea11b5e409d68"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
