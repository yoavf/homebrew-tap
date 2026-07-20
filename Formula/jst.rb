class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.0.2/jst-v0.0.2-macos-universal.zip"
  sha256 "96bfea37e2d8ae893d1f5d5918891debcc9bc7f1fd1314ace65c88839bf1bfcf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
