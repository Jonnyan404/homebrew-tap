# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-cli-v0.2.0-macos-aarch64.tar.gz"
      sha256 "08a3de58b7f53ff1da335d87b509865e600bb882b2246fb691ec81f763a4f76d"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-cli-v0.2.0-macos-x86_64.tar.gz"
      sha256 "56109236602d26214527cea070830a5b2ba6d454ec99f44f905404ae9c889289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-cli-v0.2.0-linux-aarch64.tar.gz"
      sha256 "8b09f78f7851cb971f7421b41de926540c6761e2d46df907ecd9833adb9a004e"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.2.0/clip9-cli-v0.2.0-linux-x86_64.tar.gz"
      sha256 "1625da959b3941789f755fbe11236157a6b968e67bcb001a5e0ea60a2ef61f79"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
