cask "continuo" do
  version "0.2.3"
  sha256 "a3b6b6e1154fe8c176d20cacb3ebc6560c1de413e97d4635d47c8b499431cf30"

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
