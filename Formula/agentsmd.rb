class Agentsmd < Formula
  desc "CI for your AI agent's instructions: validate AGENTS.md, bridge CLAUDE.md"
  homepage "https://github.com/youwei792/agentsmd"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_arm64.tar.gz"
      sha256 "8f8c618ca44c7693f4a6f6263414acf7af1f55844b1d7d430a8edaf28769cde1"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_darwin_amd64.tar.gz"
      sha256 "34b916835fa3ad4fc4e114cf6091ad0f3f5c3e4ccf98066c1d5eb8b3cec42a44"

      def install
        bin.install "agentsmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_arm64.tar.gz"
      sha256 "bd87103b9d491037542e861a68e3ba9cfdd3574831fd14cda47d9ce06f91595e"

      def install
        bin.install "agentsmd"
      end
    end
    on_intel do
      url "https://github.com/youwei792/agentsmd/releases/download/v#{version}/agentsmd_linux_amd64.tar.gz"
      sha256 "92318d6118b43ed4dcdf2c4d923b65413963473dba320aac8287f0da3cd5cc74"

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
