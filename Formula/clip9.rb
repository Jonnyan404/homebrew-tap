# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.0-beta2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-cli-macos-aarch64.tar.gz"
      sha256 "88cc5e7f5e83fd3a9e64146aa85d7fc44c6522629bb877201f8792fbe93dda2b"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-cli-macos-x86_64.tar.gz"
      sha256 "c406c87de1bca4006e41eb3afdf7634fc818bce9aa6b9fdd265a8301271cbb17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-cli-linux-aarch64.tar.gz"
      sha256 "e575e08d437b28b1c6a0780ff2468560e2a8fba6f87044819b315a60e2caa782"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta2/clip9-cli-linux-x86_64.tar.gz"
      sha256 "199719d5d77bb8b03c334a348f620c4b1f89ecbf1fbec52ee035491a01d5c4b0"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
