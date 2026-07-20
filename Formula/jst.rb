class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.0.1/jst-v0.0.1-macos-universal.zip"
  sha256 "6b303614d2c2f69de1d6166fc5dc9f6c192a4f885dadc27af843c2e5f77376c0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
