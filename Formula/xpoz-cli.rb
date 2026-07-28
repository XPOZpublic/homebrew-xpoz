class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.10/xpoz-cli-macos-arm64"
      sha256 "836d89930a8ecdd5d0607b68ceb3114ad8dde323ea74d834c290ff5f64065381"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.10/xpoz-cli-linux-amd64"
      sha256 "72570f4a8dbb26c92e4cb7c6f3bbd609c02cae6f9ca5d27bf12905fe797e8abc"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.10/xpoz-cli-linux-arm64"
      sha256 "b09734edebba4949a4bc7c05465a97681d6307f95772ac616698c7875b6db17a"
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
