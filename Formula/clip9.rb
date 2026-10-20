# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-cli-v0.1.7-macos-aarch64.tar.gz"
      sha256 "1e636dd2f76f30ce80c7746732658ee8c5058fa548c14df81409a5632f274865"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-cli-v0.1.7-macos-x86_64.tar.gz"
      sha256 "ec8b9515222c885a65c210025630e95e4954ec0f53d6a742d1daf67c68f0eee1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-cli-v0.1.7-linux-aarch64.tar.gz"
      sha256 "1d38e3180bc50a586c6e2e73a5513ebec6d423c1fce4357cd6b607f10b07d5ca"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.7/clip9-cli-v0.1.7-linux-x86_64.tar.gz"
      sha256 "b5c4834a02becf4d24529e644dc0c4fc2ecaeb4aace6c73c828813fef5c6c300"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
