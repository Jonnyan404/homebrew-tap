# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-cli-v0.1.8-macos-aarch64.tar.gz"
      sha256 "e5c3759998453cb565d037148bb90b59933528733d1e74c6ae0970c7436fe3c3"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-cli-v0.1.8-macos-x86_64.tar.gz"
      sha256 "ace61d39f6f737223dbbc1eda1e5b3a66130bb35a5caf9de5a6989baa5cc5abb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-cli-v0.1.8-linux-aarch64.tar.gz"
      sha256 "727c4ad2e3844e4163c21cc02768f5b183d6a67f14c6170487ba04ba60950a36"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.8/clip9-cli-v0.1.8-linux-x86_64.tar.gz"
      sha256 "2af49a5c6f47ea522ea01d40bc393eee6bcac12632606aedfc67fc775955e289"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
