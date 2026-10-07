# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-cli-v0.1.3-macos-aarch64.tar.gz"
      sha256 "017c555c2bc989ee808489cb9cb23bae05530803bafb36b1c18f0bda25544725"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-cli-v0.1.3-macos-x86_64.tar.gz"
      sha256 "2760c025409dd42f6fd36089d6d67db7b56892f7b53b7e585c588515353828c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-cli-v0.1.3-linux-aarch64.tar.gz"
      sha256 "c9e3c80a1ca95b9c4e5313e2153e447afb739cbffe3530b03872d33b62b326dd"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.3/clip9-cli-v0.1.3-linux-x86_64.tar.gz"
      sha256 "5d78e1336f83c4806b291a25f0d3706360e0263670221e6ec4a3ee0b2e00c687"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
