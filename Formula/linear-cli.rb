class LinearCli < Formula
  desc "CLI for Linear via GraphQL API"
  homepage "https://github.com/aliou/linear-cli"
  version "0.2.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/linear-cli/releases/download/v0.2.1/linear-darwin-arm64", using: :nounzip
  sha256 "3929968d912edca2dba91024e4c41258343ba46aba179fd93497569c3bdab2d3"

  def install
    bin.install Dir["*"].first => "linear"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linear --version")
  end
end
