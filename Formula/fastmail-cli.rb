class FastmailCli < Formula
  desc "CLI for FastMail via JMAP"
  homepage "https://github.com/aliou/fastmail-cli"
  version "0.2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/fastmail-cli/releases/download/v0.2.0/fastmail-darwin-arm64", using: :nounzip
  sha256 "c8636c79ccf95d928849a357eec3d2853bf726a2158d6c7b582ea522f8708501"

  def install
    bin.install Dir["*"].first => "fastmail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastmail --version")
  end
end
