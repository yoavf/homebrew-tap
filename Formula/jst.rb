class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.1.0/jst-v0.1.0-macos-universal.zip"
  sha256 "98b495b29f37717f6430a4a0bf80fbc78745b8b6e763d782b44d5d344ad977c0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
