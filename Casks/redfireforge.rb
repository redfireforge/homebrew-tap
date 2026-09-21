cask "redfireforge" do
  arch arm: "aarch64", intel: "2D5883FDB01360844D9621793FDE7A8B8619587769E13CF7AC039632CB12FD9C"

  version "0.8.14"
  sha256 arm:   "C798EEF247EF3529E7865F249D93D6A0AE8CC2C145643B100A89D292B6D82E73",
         intel: "2D5883FDB01360844D9621793FDE7A8B8619587769E13CF7AC039632CB12FD9C"

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
