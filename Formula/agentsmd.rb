class Agentsmd < Formula
  desc "CI for your AI agent's instructions: validate AGENTS.md, bridge CLAUDE.md"
  homepage "https://github.com/youwei792/agentsmd"
  version "0.1.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_arm64.tar.gz"
      sha256 "7ce845c6566cbedd6672a2e787ed67e4dea056ca12136846e0f64b414f12959c"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_amd64.tar.gz"
      sha256 "897a4d94cb64e5ed3c35aae5f5a5c2d3443d25eccad7b7a1d92303d74b51b37d"

      def install
        bin.install "agentsmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_arm64.tar.gz"
      sha256 "fea173b08d69394eb6859ee3c2074843e44e27bfb59de67a4022ecc37bddd9ff"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_amd64.tar.gz"
      sha256 "7db723edeab99dcc09b7147581a5f801e5725df5998919c526f25bd5e49896d0"

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
