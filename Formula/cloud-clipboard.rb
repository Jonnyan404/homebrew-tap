# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudClipboard < Formula
  desc "云剪贴板：跨设备共享文本和文件"
  homepage "https://github.com/Jonnyan404/cloud-clipboard-go"
  version "3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.2/cloud-clipboard-go_Darwin_x86_64.tar.gz"
      sha256 "b2568109b317023fba798f8128d7ff5ea3a882ec64cbccf109e465f4dca12ce8"

      def install
        bin.install "cloud-clipboard"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.2/cloud-clipboard-go_Darwin_aarch64.tar.gz"
      sha256 "9527719363521dcdb905ac8953e15aff121d0e66abb2a5a45ac4678906ad3681"

      def install
        bin.install "cloud-clipboard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.2/cloud-clipboard-go_Linux_x86_64.tar.gz"
        sha256 "fecb9f8f41d7ef041d9a046877a88a72313685749c2e49a26b17c196a8b36bb5"

        def install
          bin.install "cloud-clipboard"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.2/cloud-clipboard-go_Linux_aarch64.tar.gz"
        sha256 "36a6b3f83474fe2aacce6dd1c9ae2610330229d0da358cd6e2e0322abead56d8"

        def install
          bin.install "cloud-clipboard"
        end
      end
    end
  end

  def post_install
    (etc/"cloud-clipboard").mkpath
    (var/"log").mkpath
    # 如果配置文件不存在，创建一个默认配置
    unless (etc/"cloud-clipboard/config.json").exist?
      (etc/"cloud-clipboard/config.json").write <<~EOS
        {
          "server": {
            "host": "0.0.0.0",
            "port": 9502
          }
        }
      EOS
    end
  end

  service do
    run [opt_bin/"cloud-clipboard", "-config", etc/"cloud-clipboard/config.json"]
    working_dir var
    keep_alive true
    log_path var/"log/cloud-clipboard.log"
    error_log_path var/"log/cloud-clipboard.error.log"
  end

  test do
    system "#{bin}/cloud-clipboard", "-v"
  end
end
