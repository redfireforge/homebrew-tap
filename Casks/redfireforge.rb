cask "redfireforge" do
  arch arm: "aarch64", intel: "181F6C97C5C486E481D630AD4033EC84CAF6DF462F6527F86CB0D4CB9A6F27D3"

  version "0.8.8"
  sha256 arm:   "667271B41A90342E8132A3E113E5B0C559F0A157F5AD40128BB0AAEE782D9962",
         intel: "181F6C97C5C486E481D630AD4033EC84CAF6DF462F6527F86CB0D4CB9A6F27D3"

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
