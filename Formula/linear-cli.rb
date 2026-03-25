class LinearCli < Formula
  desc "CLI for Linear via GraphQL API"
  homepage "https://github.com/aliou/linear-cli"
  version "0.4.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/linear-cli/releases/download/v0.4.0/linear-darwin-arm64", using: :nounzip
  sha256 "ee433baaadc9708736e7d5d94587fbe9127dded39afe53c30a73eab26afaa6da"

  def install
    bin.install Dir["*"].first => "linear"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linear --version")
  end
end
