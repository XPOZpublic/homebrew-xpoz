class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.0/xpoz-cli-macos-arm64"
      sha256 "8728c23ab80e47bab8cbeda055a4a109d389726f2aba5da174e8c5dc86b86b62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.0/xpoz-cli-linux-amd64"
      sha256 "fdd58b9f43115e3435dfaceb92cb3e05779edd141de01a16f2c9db3ec79418f4"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.3.0/xpoz-cli-linux-arm64"
      sha256 "8dac02ff0857d8d2176c2d6aff67aa5fb0e90e885148138c0750a431d26d1aa1"
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
