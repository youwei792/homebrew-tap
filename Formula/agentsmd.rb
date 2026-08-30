class Agentsmd < Formula
  desc "CI for your AI agent's instructions: validate AGENTS.md, bridge CLAUDE.md"
  homepage "https://github.com/youwei792/agentsmd"
  version "0.2.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_arm64.tar.gz"
      sha256 "9b4aa2e64a2698be527cbcbc69ff7b1080bc5fb076bc097681dd1308e5768fc1"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_amd64.tar.gz"
      sha256 "358a0aea12465860b9612f74a7b5d5c12921e97d3aa8739cd142bbd166239104"

      def install
        bin.install "agentsmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_arm64.tar.gz"
      sha256 "bbefeb85ec4ba70998630629f714ff6eee1e33ae45220eee84d4abe222a0bbc4"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_amd64.tar.gz"
      sha256 "d408a06b74aaf332d957b8de5e6ca0f54dc8ae3c426edd5699cc99d70b6c802d"

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
