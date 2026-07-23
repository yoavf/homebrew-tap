class Jst < Formula
  desc "Run shell commands from natural-language requests"
  homepage "https://github.com/yoavf/jst"
  url "https://github.com/yoavf/jst/releases/download/v0.3.2/jst-v0.3.2-macos-universal.zip"
  sha256 "7e894d0cbb129c39e518fdaea6a89d0d003188fbbe5a133cb6eb109610083a11"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jst"
  end

  test do
    system bin/"jst", "--version"
  end
end
