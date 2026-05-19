class Pmd < Formula
  desc "Terminal markdown pager with syntax highlighting"
  homepage "https://github.com/aliou/preview-markdown"
  version "0.5.0"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/aliou/preview-markdown/releases/download/v0.5.0/pmd-darwin-arm64", using: :nounzip
      sha256 "e7fb3efec5d15b66cdc6c66f865eed4b8ef4a08368be804a2bf95f0449686b1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aliou/preview-markdown/releases/download/v0.5.0/pmd-linux-arm64", using: :nounzip
      sha256 "52fdfa7dd103a08824c14f499ffb298a8359b87cb341ebfc64bc77c4ae16d619"
    end
  end

  def install
    bin.install Dir["*"].first => "pmd"
  end

  test do
    assert_match "Render markdown on the CLI", shell_output("#{bin}/pmd --help")
  end
end
