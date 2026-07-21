class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.2.0/jst-v0.2.0-macos-universal.zip"
  sha256 "295c76d5f51e06d692f9045e1a900fffcb93fb714e757e36abc787ee2f6d6df6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
