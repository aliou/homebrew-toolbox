class Obsdx < Formula
  desc "Headless Obsidian vault intelligence CLI"
  homepage "https://github.com/aliou/obsdx"
  version "0.0.3"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/aliou/obsdx/releases/download/v0.0.3/obsdx-darwin-arm64", using: :nounzip
      sha256 "270a93498f664c6194233015365efe9befd7e47a28d0c106edf09cce81007989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aliou/obsdx/releases/download/v0.0.3/obsdx-linux-arm64", using: :nounzip
      sha256 "e3ff7c0792f1027f70f85135c6cd46793a91eaa1a1a17433e41d65e9c69ee498"
    end
  end

  def install
    bin.install Dir["*"].first => "obsdx"
  end

  test do
    assert_match "Headless Obsidian vault intelligence CLI", shell_output("#{bin}/obsdx --help")
  end
end
