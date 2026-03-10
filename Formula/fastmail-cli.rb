class FastmailCli < Formula
  desc "CLI for FastMail via JMAP"
  homepage "https://github.com/aliou/fastmail-cli"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/fastmail-cli/releases/download/v0.1.1/fastmail-darwin-arm64", using: :nounzip
  sha256 "d3993d323c67707daf6c0a8b06606d9a0fe06097c69ff805e7a8bcf526ca7efe"

  def install
    bin.install Dir["*"].first => "fastmail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastmail --version")
  end
end
