# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudClipboardGo < Formula
  desc "云剪贴板：跨设备共享文本和文件"
  homepage "https://github.com/Jonnyan404/cloud-clipboard-go"
  version "3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.3/cloud-clipboard-go_Darwin_x86_64.tar.gz"
      sha256 "4822d1a3434ce365544ee3e11f4840b4f18ffaa05601e4947eed1e56e3470179"

      def install
        bin.install "cloud-clipboard-go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.3/cloud-clipboard-go_Darwin_aarch64.tar.gz"
      sha256 "3437275fbe86d3a93b53ef3a0c51f9b7630e234832a34f096f7eb88ed490e94e"

      def install
        bin.install "cloud-clipboard-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.3/cloud-clipboard-go_Linux_x86_64.tar.gz"
        sha256 "b22c219f21181e5396dbbdcf910e6f2579ab6aace2c2acb21160fbf4ca50a557"

        def install
          bin.install "cloud-clipboard-go"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Jonnyan404/cloud-clipboard-go/releases/download/v3.3/cloud-clipboard-go_Linux_aarch64.tar.gz"
        sha256 "b521b0cc1e1d3c617cca6ef47e52e8f1a12526f7274925831cf20cecba43b69f"

        def install
          bin.install "cloud-clipboard-go"
        end
      end
    end
  end

  def post_install
    (etc/"cloud-clipboard-go").mkpath
    (var/"log").mkpath
    # 如果配置文件不存在，创建一个默认配置
    unless (etc/"cloud-clipboard-go/config.json").exist?
      (etc/"cloud-clipboard-go/config.json").write <<~EOS
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
    run [opt_bin/"cloud-clipboard-go", "-config", etc/"cloud-clipboard-go/config.json"]
    working_dir var
    keep_alive true
    log_path var/"log/cloud-clipboard-go.log"
    error_log_path var/"log/cloud-clipboard-go.error.log"
  end

  test do
    system "#{bin}/cloud-clipboard-go", "-v"
  end
end
