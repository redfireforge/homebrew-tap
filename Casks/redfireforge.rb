cask "redfireforge" do
  arch arm: "aarch64", intel: "DFF69B26E428F4E980C07D79EFF39D9029F58EC4F98526A21A347E04D003848B"

  version "0.8.18"
  sha256 arm:   "9B585B53F62D0F32829B455662D4F54C21770D79189FB7BECD55941E08496FDF",
         intel: "DFF69B26E428F4E980C07D79EFF39D9029F58EC4F98526A21A347E04D003848B"

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
