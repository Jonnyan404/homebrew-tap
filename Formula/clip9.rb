# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1-beta3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-cli-v0.1.1-beta3-macos-aarch64.tar.gz"
      sha256 "ec3f3680a9b0d232afd3193e0ea841e75bd5c4dcbc6c6f0d528ab60b4ff0b72c"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-cli-v0.1.1-beta3-macos-x86_64.tar.gz"
      sha256 "da197cd3ea86f9eee1f27a087f3a277ff5420eefa78abf0708b891a2cc4b7604"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-cli-v0.1.1-beta3-linux-aarch64.tar.gz"
      sha256 "8593ac52cd7073ec7e549a342eb30273a086a04a01ad0776d20969d64f2960fc"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta3/clip9-cli-v0.1.1-beta3-linux-x86_64.tar.gz"
      sha256 "c8081899c6a690b388219702dd93d6627082fac0a772a5dc8618e9b40fe32992"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
