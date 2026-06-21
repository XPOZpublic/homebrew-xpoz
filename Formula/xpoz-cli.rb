class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.7/xpoz-cli-macos-arm64"
      sha256 "49351ae7fff3d031fa52cd5ce911cff27e66018caed43caf819de58aa8215916"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.7/xpoz-cli-linux-amd64"
      sha256 "319748e8b91cff51ba4a1577eb0136943f55590c9601d783d0c5646c7ee836c6"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.7/xpoz-cli-linux-arm64"
      sha256 "239142da3fd3b95665173813d4bc10b23c445d699316bdd8418d98a91f9fa479"
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
