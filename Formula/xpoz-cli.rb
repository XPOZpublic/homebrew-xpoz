class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.4/xpoz-cli-macos-arm64"
      sha256 "92e5edacbaf89ea7910b2a5a077a810a2e00c91c71161642f46d719e4a3cbf5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.4/xpoz-cli-linux-amd64"
      sha256 "a06567e3bcbfe3d26f1352ff60a48cd37dc23f04a4f2c023ee9e203e712ad947"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.4/xpoz-cli-linux-arm64"
      sha256 "57a94bd0cfa9011d5feb10a93993863e308b49c095cd46ba030ddfde24797414"
    end
  end

  def install
    binary = Dir["xpoz-cli-*"].first
    bin.install binary => "xpoz-cli"
  end

  test do
    assert_match "xpoz-cli", shell_output("#{bin}/xpoz-cli --help")
  end
end
