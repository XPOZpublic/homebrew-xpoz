class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.9/xpoz-cli-macos-arm64"
      sha256 "0ac6f62d6726ad3a1e93a574f235448922297eee7a69afb0b231930988210bbb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.9/xpoz-cli-linux-amd64"
      sha256 "233e655a3309d44e46ad3b35426b5ce3d170ef7e4e7d4b755b14cafe801f3ec3"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.9/xpoz-cli-linux-arm64"
      sha256 "e95481bf47d7f93a2d938cc268b418c70cb91c529496ec412eec4d7540d344f8"
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
