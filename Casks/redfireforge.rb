cask "redfireforge" do
  arch arm: "aarch64", intel: "CDCE700F3F0AB6CF108ED816C3575C9594ACE59A29B2759D0B07F229AD62043E"

  version "0.8.19"
  sha256 arm:   "6D576384F70793DCE6BBF0BB4F75A537B65E4051C71DA7918323DF75D271EF22",
         intel: "CDCE700F3F0AB6CF108ED816C3575C9594ACE59A29B2759D0B07F229AD62043E"

  url "https://github.com/redfireforge/redfireforge-public/releases/download/v#{version}/RedfireForge_#{version}_#{arch}.dmg"
  name "RedfireForge"
  desc "Visual API testing and load-testing workbench for HTTP, GraphQL, gRPC, WebSocket, SSE, and Kafka"
  homepage "https://redfireforge.com"

  app "RedfireForge.app"

  zap trash: [
    "~/Library/Application Support/RedfireForge",
    "~/Library/Application Support/com.redfireforge.desktop",
    "~/Library/Preferences/com.redfireforge.desktop.plist",
    "~/Library/Saved Application State/com.redfireforge.desktop.savedState",
  ]
end
