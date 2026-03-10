class LinearCli < Formula
  desc "CLI for Linear via GraphQL API"
  homepage "https://github.com/aliou/linear-cli"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/linear-cli/releases/download/v0.1.0/linear-darwin-arm64", using: :nounzip
  sha256 "9c758b23cb1b0d3bbda611c279d3668664e75d65ccd9265e0df8a24d35470a06"

  def install
    bin.install Dir["*"].first => "linear"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linear --version")
  end
end
