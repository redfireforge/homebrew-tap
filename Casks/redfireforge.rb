cask "redfireforge" do
  arch arm: "aarch64", intel: "BF5925E9A549DF1D32DD573353B0784154E302D05A7058517620746AF99D715A"

  version "0.8.11"
  sha256 arm:   "0EFDA5752D18B524F877481365761A8E0F196BB2346E69E07E842D9AF50229CD",
         intel: "BF5925E9A549DF1D32DD573353B0784154E302D05A7058517620746AF99D715A"

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
