class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.1/xpoz-cli-macos-arm64"
      sha256 "fc236f6d9e78a643eead3bfdaa718686c096cd1e20df0b41f76dfdf30c21c4e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.1/xpoz-cli-linux-amd64"
      sha256 "04389682ccc1d1c61e55957c44cf2b0e76cdd7bd533892846f95cecc53361c62"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.1/xpoz-cli-linux-arm64"
      sha256 "6d9e2d9a3106419b7805942a81afdd2dcd57ccecffa1398b5cdba0cbfbe8016d"
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
