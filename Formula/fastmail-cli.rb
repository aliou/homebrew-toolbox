class FastmailCli < Formula
  desc "CLI for FastMail via JMAP"
  homepage "https://github.com/aliou/fastmail-cli"
  version "0.2.1"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/fastmail-cli/releases/download/v0.2.1/fastmail-darwin-arm64", using: :nounzip
  sha256 "c2479cfadc51b1cfa8e1fc512e59163a24b858350be9baf332d535449fa1ac7c"

  def install
    bin.install Dir["*"].first => "fastmail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastmail --version")
  end
end
