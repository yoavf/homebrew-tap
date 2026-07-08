cask "continuo" do
  version "0.1.2"
  sha256 "d47f1e6e88be5a832d5ce056ec3af83fc0d0ed3669136f6e7d7211dc24c0e89f"

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
