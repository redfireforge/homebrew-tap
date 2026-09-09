cask "redfireforge" do
  arch arm: "aarch64", intel: "A36D2867520AD7515FC7ADAB20DDE37B5508A7FBC506BBD9272268EC8BECFA29"

  version "0.8.6"
  sha256 arm:   "CFE85BDD77742B03EF9069677101D1140FE6AE4D9F1F07F56DDDC7FC7789884E",
         intel: "A36D2867520AD7515FC7ADAB20DDE37B5508A7FBC506BBD9272268EC8BECFA29"

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
