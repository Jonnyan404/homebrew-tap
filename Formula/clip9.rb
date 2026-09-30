# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1-beta2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-macos-aarch64.tar.gz"
      sha256 "dcbf09df7b121b4ec7e6d9578fa9d1f675c49fea893c668e669511e9961242d6"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-macos-x86_64.tar.gz"
      sha256 "a52ce96701744a546032bf98d0f7ba3f6b795a2e5f7017736ddd7b6250efa214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-linux-aarch64.tar.gz"
      sha256 "130701e65a99dcc5a519a5cb1a46a1171a8061cfebdd38050c45c12618740cbb"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-linux-x86_64.tar.gz"
      sha256 "8c9370304053f8ff9b4b2d6df95846484d2e861c57ac20c6448e12a62094e988"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
