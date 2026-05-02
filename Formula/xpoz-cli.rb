class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.5/xpoz-cli-macos-arm64"
      sha256 "47570968f75587dab14da41746dacc95490e1d0bfa6b572d1cb03169c4142e3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.5/xpoz-cli-linux-amd64"
      sha256 "40847d8eac6e0bba91bff6129dd289fc700975439402daaad2b459d04771f3e3"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.5/xpoz-cli-linux-arm64"
      sha256 "07de6072b4cb877102d8f2ff3146e42a92f8fd12c1fae3d35c15c021dbac1182"
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
