class Sesame < Formula
  desc "BM25 search for coding agent sessions"
  homepage "https://github.com/aliou/sesame"
  version "0.9.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/aliou/sesame/releases/download/%40aliou/sesame-cli%400.9.0/sesame-darwin-arm64", using: :nounzip
      sha256 "4f97c2cf3a627d91a2b8dda6f8d6650ec12941bfd9304753f3ccf8a6891e0735"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aliou/sesame/releases/download/%40aliou/sesame-cli%400.9.0/sesame-linux-arm64", using: :nounzip
      sha256 "4a8db421d3b7d676f76cd54bc4432a82f1e50b99c08913a49b0c08093ca278a9"
    end

    on_intel do
      url "https://github.com/aliou/sesame/releases/download/%40aliou/sesame-cli%400.9.0/sesame-linux-x64", using: :nounzip
      sha256 "bf3dcf288cbe9914f36d11c64f55223e99c05100c2c6dc06413048b182a14197"
    end
  end

  def install
    bin.install Dir["*"].first => "sesame"
  end

  test do
    assert_match "Usage: sesame", shell_output("#{bin}/sesame --help")
  end
end
