class Agentsmd < Formula
  desc "CI for your AI agent's instructions: validate AGENTS.md, bridge CLAUDE.md"
  homepage "https://github.com/youwei792/agentsmd"
  version "0.2.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_arm64.tar.gz"
      sha256 "a0f330cd1b1c43ae8192bbd2a0825b51c89af637d8955d917bcaa9a2d76642bb"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_amd64.tar.gz"
      sha256 "eec4a7d8407b88bbd593ee2eb28675b197091ee7293a65a91a91559ee4d13424"

      def install
        bin.install "agentsmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_arm64.tar.gz"
      sha256 "4ad9899a8687e02fa15ab22698368559df2687b7fbe6e5bf530e0b9c6c38c66b"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_amd64.tar.gz"
      sha256 "a9244c73e73e766f4e306dcd4fe2c12b57610bd317ac3539e0eef5528e4da766"

      def install
        bin.install "agentsmd"
      end
    end
  end

  def caveats
    <<~EOS
      Also available via Go:
        go install github.com/youwei792/agentsmd@latest
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentsmd version")
  end
end
