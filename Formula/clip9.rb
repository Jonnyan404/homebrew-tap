# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-cli-macos-aarch64.tar.gz"
      sha256 "315b73ff019fa33aa9c4dddfdb4b3a0109c277dc6c2f9b9aed409f81e7eada05"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-cli-macos-x86_64.tar.gz"
      sha256 "198586aec4c2074b513329b68e1ccc44cb39569dea807f1466e6263bf0883cac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-cli-linux-aarch64.tar.gz"
      sha256 "5b2b0caefa76a3b211aeb593926f03da1353e71ed2c55035139a62c5cdff35f7"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0/clip9-cli-linux-x86_64.tar.gz"
      sha256 "12dabb120233f1c9c91e17230e97cc547b72627ab62a51f82f059e0f5e8b734c"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
