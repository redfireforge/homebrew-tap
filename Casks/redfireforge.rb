cask "redfireforge" do
  arch arm: "aarch64", intel: "A65E75BA775AC6E46A1EC052A9313CEEAD65F60474363F981E1BF72BFDD4A775"

  version "0.8.16"
  sha256 arm:   "CC12C29F226C5EA3ED990108DB63335B845245E1CF0E862BB99413FAE6B84132",
         intel: "A65E75BA775AC6E46A1EC052A9313CEEAD65F60474363F981E1BF72BFDD4A775"

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
