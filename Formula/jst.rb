class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.3.0/jst-v0.3.0-macos-universal.zip"
  sha256 "d2bc51dce3f9aca8cb9783a20c8800a99fd70a4bd4f2285d86c6c0a444702deb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
