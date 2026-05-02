class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.2.0/xpoz-cli-macos-arm64"
      sha256 "17c3a33c5702f6dbb7dcb3e5381c59c1faed9ec8db0e8711629162c4ab6a8048"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.2.0/xpoz-cli-linux-amd64"
      sha256 "08532f1458710e7fc7884cede135221594f35dd2e7b192d6887df90f35031d48"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.2.0/xpoz-cli-linux-arm64"
      sha256 "124f268388e7db11931eb5190908fba4961859a1d45fc16d4d90f95536194236"
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
