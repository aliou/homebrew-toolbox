class LinearCli < Formula
  desc "CLI for Linear via GraphQL API"
  homepage "https://github.com/aliou/linear-cli"
  version "0.2.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/linear-cli/releases/download/v0.2.2/linear-darwin-arm64", using: :nounzip
  sha256 "46984fef0c967e6b732605050a6f029b852a1855d376daf09e9d20a2bd8d2489"

  def install
    bin.install Dir["*"].first => "linear"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linear --version")
  end
end
