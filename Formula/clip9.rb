# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1-beta1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-macos-aarch64.tar.gz"
      sha256 "0385808c8430820bbbd889a6ef121b7ee1f8d79c8443e652fefd9a43603ec371"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-macos-x86_64.tar.gz"
      sha256 "43b0fda149e4c01e84e8be8cad2138779d3822730f45a41123730a4be7f4a04b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-linux-aarch64.tar.gz"
      sha256 "0cf809ab5662b58ecef94fd12197f3659ad6abae6dae3f8365c4b630c9bd737d"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta1/clip9-cli-v0.1.1-beta1-linux-x86_64.tar.gz"
      sha256 "4c021cbcdb8ea876eeac30772b30887d770beab02a51500af0214a2f77eb0d53"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
