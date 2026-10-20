cask "redfireforge" do
  arch arm: "aarch64", intel: "5F1A79F9C9C80B2D928619B8E982140FE535F700466D359ECB7261B1519586B3"

  version "0.8.17"
  sha256 arm:   "2D841D917319A6E0A7A1AD3E2F17C7ECB2A5FA90101C9580B9163D88BFA8099E",
         intel: "5F1A79F9C9C80B2D928619B8E982140FE535F700466D359ECB7261B1519586B3"

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
