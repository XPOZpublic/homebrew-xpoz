class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.5/xpoz-cli-macos-arm64"
      sha256 "a000f090ec32e311aebdd5d9c0c01f5e1630324433e810cead8410a3866b1a39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.5/xpoz-cli-linux-amd64"
      sha256 "55cdd5710ce07d08579c3b2c53949946d54c803669ac235e27770c31f574f268"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.5/xpoz-cli-linux-arm64"
      sha256 "3963a533f94e7a730b4ad88a173bb6b58afa26c6270ecad3aa6e28c900747fec"
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
