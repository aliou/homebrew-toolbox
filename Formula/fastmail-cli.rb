class FastmailCli < Formula
  desc "CLI for FastMail via JMAP"
  homepage "https://github.com/aliou/fastmail-cli"
  version "0.1.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/fastmail-cli/releases/download/v0.1.0/fastmail-darwin-arm64", using: :nounzip
  sha256 "e3d523a78902e3d3b4cc50f246257c089b7e85e9bb21e92950ff3ceb0edca468"

  def install
    bin.install Dir["*"].first => "fastmail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastmail --version")
  end
end
