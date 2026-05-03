class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.2/xpoz-cli-macos-arm64"
      sha256 "5d3249ecab7f031e32df7774997ea3dddccc12c18aa63f2d4869de75cc4b95ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.2/xpoz-cli-linux-amd64"
      sha256 "3bf34900e550578587c63c912e9882580db71f86aae8bd5b1939cbeb118e65ea"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.2/xpoz-cli-linux-arm64"
      sha256 "0ee2bf582783082187b27eb35c1d6d6e0b063454ebad49af29e06f0ea2fc81ea"
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
