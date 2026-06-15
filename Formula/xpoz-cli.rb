class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.6/xpoz-cli-macos-arm64"
      sha256 "e8f490c08c2a342a81010d1e059c425853d7c0886780c59a39b7b2b64ad77f4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.6/xpoz-cli-linux-amd64"
      sha256 "be78c7b7ebc399a4a2553555c1cf80975464399e49a93cbdd73357fab65fb656"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.6/xpoz-cli-linux-arm64"
      sha256 "004c773ae24099db2e16748c7bd1b50453b0064c3a13d5fec64570e7c7bd7ab5"
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
