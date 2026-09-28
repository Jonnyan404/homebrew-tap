# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.0-beta1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-cli-aarch64-apple-darwin.tar.gz"
      sha256 "558c7c0cb8c20faa7f9ee07d909b633e13088f7ba1442242fa3b9f1082676405"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-cli-x86_64-apple-darwin.tar.gz"
      sha256 "fd5bf5d2374255078d7c471a4eb0227ee340af04d388d185412f6ce054820003"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04726debe4596dec79ad1132a23e5feb1f6907f580076a92334658ecbe77d555"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta1/clip9-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2efebbc369bfeaa39430257c1b2e0e1debaca0b26a4b3a79463f00906cd102e"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
