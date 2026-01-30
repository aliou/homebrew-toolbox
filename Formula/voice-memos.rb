class VoiceMemos < Formula
  desc "Browse and export Apple Voice Memos from the command line"
  homepage "https://github.com/aliou/toolbox"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/aliou/toolbox/releases/download/voice-memos@0.1.0/voice-memos-darwin-arm64", using: :nounzip
    sha256 "a15596a222a3270927b084c56e2a90b20b93cdf52106e2c039f7973a96dbc238"
  end

  on_intel do
    url "https://github.com/aliou/toolbox/releases/download/voice-memos@0.1.0/voice-memos-darwin-x64", using: :nounzip
    sha256 "76206de2a855fd3a376fe0b0433ada5e1dead98ea44b0e85c6ab95f29a0b116b"
  end

  def install
    bin.install Dir["*"].first => "voice-memos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-memos --version")
  end
end
