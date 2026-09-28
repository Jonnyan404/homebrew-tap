# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.0-beta3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-macos-aarch64.tar.gz"
      sha256 "9226b06606469f066dc1cc497d41332a0b7812751af79d7d6ec05c635c725cb2"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-macos-x86_64.tar.gz"
      sha256 "12f41401e794bead4aee29315314cc087a1847fb5915c8029b15271083bdd210"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-linux-aarch64.tar.gz"
      sha256 "64fb18b2008a669016b238561a8a2680d64b2e97a9690af943e9381efa4cacc2"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-linux-x86_64.tar.gz"
      sha256 "88eedbba4d4992260ce70cc55c9715b370ce9307d755ae740d50cd80cbea86d5"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
