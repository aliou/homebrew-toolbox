class LinearCli < Formula
  desc "CLI for Linear via GraphQL API"
  homepage "https://github.com/aliou/linear-cli"
  version "0.3.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/aliou/linear-cli/releases/download/v0.3.0/linear-darwin-arm64", using: :nounzip
  sha256 "b00f20708f00948ea82ea49bf1ce7e77469c643dafbf73c997cadbf7ed44cbec"

  def install
    bin.install Dir["*"].first => "linear"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linear --version")
  end
end
