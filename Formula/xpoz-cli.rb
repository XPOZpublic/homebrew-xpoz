class XpozCli < Formula
  desc "Standalone CLI wrapper around the Xpoz Python SDK"
  homepage "https://www.xpoz.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.0/xpoz-cli-macos-arm64"
      sha256 "185671af81965548ea731b8e9d909229f0cee9f9202371a0f4db74c242fdd203"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.0/xpoz-cli-linux-amd64"
      sha256 "9f934798df84e3d9eed01320ec4a5f01b51689a7db2dec6d6b89d5fb8aafa342"
    end
    on_arm do
      url "https://github.com/XPOZpublic/xpoz-cli/releases/download/v0.1.0/xpoz-cli-linux-arm64"
      sha256 "f6083c8c7f93f2f99dc8ab8a35384314696aa9ccbf100458a2b8292ed2976d40"
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
