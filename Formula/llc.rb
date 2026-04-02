class Llc < Formula
  desc "Enhanced ls command with file comments support"
  homepage "https://github.com/kkw-h/llc"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kkw-h/llc/releases/download/v#{version}/llc-darwin-arm64"
      sha256 "3cd21751f4bfa43382c06bb99570f1960bd3451114a1766a4565180317f80f13"
    end
    on_intel do
      url "https://github.com/kkw-h/llc/releases/download/v#{version}/llc-darwin-amd64"
      sha256 "018cfb3d59771e25505407eb104fbfe46f7de870439a8fa09579dbd67c324d36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kkw-h/llc/releases/download/v#{version}/llc-linux-arm64"
      sha256 "2f110957f41dd724b6177a91c88b3d1263ec972b70a009c0d457040ff23bcfdd"
    end
    on_intel do
      url "https://github.com/kkw-h/llc/releases/download/v#{version}/llc-linux-amd64"
      sha256 "a7ef189e8715afd34a40cfc0f7307bafb96298bf2f3612455b79f71e19f55cb4"
    end
  end

  def install
    bin.install Dir["llc-*"].first => "llc"
  end

  test do
    assert_match "llc version", shell_output("#{bin}/llc --version")
  end
end
