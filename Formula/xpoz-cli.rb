class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.8/xpoz-cli-macos-arm64"
      sha256 "b85a7ef479482328db0789c97311f28361bac964b734c0884d9b4895caf049e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.8/xpoz-cli-linux-amd64"
      sha256 "c2a2efbeb5a702bacb13b24400a0236a2f520f3479d1b30d21924f3a160d279f"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.8/xpoz-cli-linux-arm64"
      sha256 "4619a7e22621444d442925f0944d3e2cf749f0924835766b65ff02b702afde0a"
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
