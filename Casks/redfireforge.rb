cask "redfireforge" do
  arch arm: "aarch64", intel: "CC5EBCB38A636864B9B9C90FCE4654AF8AEBD7EEDFEDD58A70BCAB5B487C1D77"

  version "0.8.20"
  sha256 arm:   "1E37DC93BBBC1CE2FDD1AA41554FE3804EF4A98DC789C5148D5E91EF342100CA",
         intel: "CC5EBCB38A636864B9B9C90FCE4654AF8AEBD7EEDFEDD58A70BCAB5B487C1D77"

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
