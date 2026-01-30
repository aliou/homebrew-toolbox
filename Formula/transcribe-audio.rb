class TranscribeAudio < Formula
  desc "Transcribe audio files using whisper.cpp"
  homepage "https://github.com/aliou/toolbox"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "whisper-cpp"

  on_macos do
    on_arm do
      url "https://github.com/aliou/toolbox/releases/download/transcribe-audio@0.1.0/transcribe-audio-darwin-arm64", using: :nounzip
      sha256 "a10f4491f86dd2e90bbdcae77b27c22280a4f27c0dc3a68a7d42a2e6690fa648"
    end

    on_intel do
      url "https://github.com/aliou/toolbox/releases/download/transcribe-audio@0.1.0/transcribe-audio-darwin-x64", using: :nounzip
      sha256 "d6277d61369e3a792f9bd9856fd036560763b3fee0c1ee2388788ce6afdf9852"
    end

  end

  on_linux do
    on_arm do
      url "https://github.com/aliou/toolbox/releases/download/transcribe-audio@0.1.0/transcribe-audio-linux-arm64", using: :nounzip
      sha256 "40967d065b9fbed429d82c602c079eb609fec84f40996b9fee9ab7ff24aeb440"
    end

    on_intel do
      url "https://github.com/aliou/toolbox/releases/download/transcribe-audio@0.1.0/transcribe-audio-linux-x64", using: :nounzip
      sha256 "c91276cafd76cca9ede88f0ffabec86c8a03fef64b29a043e8a9d307a65ba07f"
    end

  end

  def install
    bin.install Dir["*"].first => "transcribe-audio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transcribe-audio --version")
  end
end
