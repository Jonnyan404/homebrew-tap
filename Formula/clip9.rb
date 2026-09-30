# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.1-beta2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-macos-aarch64.tar.gz"
      sha256 "74dfe6b4581d3844b7936e20e9510989673f66ad64dd4b108969f68cc9b0301c"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-macos-x86_64.tar.gz"
      sha256 "90b0df00d1c81afdf711cfc428d0fc3c711045eea36e6df23f89eb8d76ee1ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-linux-aarch64.tar.gz"
      sha256 "2a7583b2ce33ce703882d0f8aab4d66fcd905b4243947696d07857d1348d1bc6"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.1-beta2/clip9-cli-v0.1.1-beta2-linux-x86_64.tar.gz"
      sha256 "4de4fcef0d5e3aa30d45b1b34af0baf1560cbc1169ee3a8d414fbbbde109be6c"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
