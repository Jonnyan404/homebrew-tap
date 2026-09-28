# 本文件由 clip9 的发布流程生成，别手改（下次发布会整份盖掉）。
class Clip9 < Formula
  desc "自托管的跨设备剪贴板：单文件服务端，前端已编在二进制里"
  homepage "https://github.com/Jonnyan404/clip9"
  version "0.1.0-beta3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-macos-aarch64.tar.gz"
      sha256 "077797d2174c1c4695b01e76c0a8ea48db12f1f621438d5c6ffd31b4fce4378a"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-macos-x86_64.tar.gz"
      sha256 "d685f2c561fd1811ac8376e4775a266bc84916f5e26f9c1c638f58c84e901303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-linux-aarch64.tar.gz"
      sha256 "87b748df15b5855666fddabcae428f2d2a0d21f06f34de7102e54ff78fc8f323"
    end
    on_intel do
      url "https://github.com/Jonnyan404/clip9/releases/download/v0.1.0-beta3/clip9-cli-linux-x86_64.tar.gz"
      sha256 "51f8ccb9369438cfc61b47d09af0a00e4c157862da12ab57e55bdd7dd9ed5001"
    end
  end

  def install
    bin.install "clip9-cli"
  end

  test do
    assert_match "clip9-server", shell_output("#{bin}/clip9-cli -v")
  end
end
