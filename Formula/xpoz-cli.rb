class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.3/xpoz-cli-macos-arm64"
      sha256 "dbde9aa460c2a390df813f95a37c411071054fe0629b3b84da4e1d2c057fc64c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.3/xpoz-cli-linux-amd64"
      sha256 "d7169e190793de5d0e1f84b584c34af4e560abe3180114ae36f28af98f14b8dd"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.3/xpoz-cli-linux-arm64"
      sha256 "7a86f19dcf2da33ad4c0c21423c4c3074d540bb393f420c6a7da8c2c2d5d6a52"
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
