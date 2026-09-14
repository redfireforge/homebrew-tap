cask "redfireforge" do
  arch arm: "aarch64", intel: "B102C70BD4F8A44A03D0D2C04044A0DE8F67883F3F4A4D5742120E7DB9257472"

  version "0.8.9"
  sha256 arm:   "E2D6C8EC901EE769B8A444EF6FAB5B0BA442E3E916F956550D7C3C1A880EDD5E",
         intel: "B102C70BD4F8A44A03D0D2C04044A0DE8F67883F3F4A4D5742120E7DB9257472"

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
