cask "redfireforge" do
  arch arm: "aarch64", intel: "798EBACBD8A7372F07710ECB2BF138F7BB5F5A1C2F72F3EADA5E7AD734283CC2"

  version "0.8.4"
  sha256 arm:   "FF0B0D512C5F68CD9CDFEB342332754DD75C40F2D78007031A4211C8BD200E98",
         intel: "798EBACBD8A7372F07710ECB2BF138F7BB5F5A1C2F72F3EADA5E7AD734283CC2"

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
