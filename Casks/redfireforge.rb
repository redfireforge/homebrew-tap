cask "redfireforge" do
  arch arm: "aarch64", intel: "6A923CBA3BFC31E167C5511ADC9B8ECB291C3BACC263CB266C48DAB7A7E10E1B"

  version "0.8.12"
  sha256 arm:   "DD5C2BD1B738B7D20A43BD3F095E6E6A8C6E9C1E8F6661E68D5EED299BAC4610",
         intel: "6A923CBA3BFC31E167C5511ADC9B8ECB291C3BACC263CB266C48DAB7A7E10E1B"

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
