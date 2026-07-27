cask "continuo" do
  version "0.3.0"
  sha256 "36dc6b1abb41ff7f506c3678a27fc60fc6ec735ad37bc7e6a54670f511a02991"

  url "https://github.com/yoavf/continuo/releases/download/v#{version}/Continuo.dmg"
  name "Continuo"
  desc "Continue a coding-agent session in a different agent"
  homepage "https://github.com/yoavf/continuo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Continuo.app"

  zap trash: [
    "~/Library/Application Support/AgentSync",
    "~/Library/Preferences/org.farhi.continuo.plist",
  ]
end
