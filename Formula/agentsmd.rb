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
      sha256 "440738a8d5ca648aef7e53944c0ab18100faf5efc292d2d79a91e7ac85406903"

      def install
        bin.install "agentsmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_arm64.tar.gz"
      sha256 "11c47d0d01b6d531a4ce34ce75961af2f4f6f73bf7c5335a6d21466c39f7588a"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_amd64.tar.gz"
      sha256 "f2c65d694fbca44be6a7930f420c630e00d68ff9a7e9eec319afe08423a577d6"

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
