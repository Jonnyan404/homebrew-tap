# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-cli-v0.1.2-macos-aarch64.tar.gz"
      sha256 "c7bf77c9eae721c1a05e018aafdbeca527f0801c83b0fb99186b98f3157e5935"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-cli-v0.1.2-macos-x86_64.tar.gz"
      sha256 "33d75be852aa3460f11cdd8270550d003c63695a9ba59c9b88cf84f0e9868b9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-cli-v0.1.2-linux-aarch64.tar.gz"
      sha256 "30b90f1b0fa9498561418aa07a6e1385e28c19feabb81b045beaa276c8ca9d3e"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.2/clip9-cli-v0.1.2-linux-x86_64.tar.gz"
      sha256 "c23efb7d40b7843e63ecb52b04628aaac30db8c57760b9104b01c1054950abd8"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
