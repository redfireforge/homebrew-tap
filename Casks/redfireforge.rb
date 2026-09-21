cask "redfireforge" do
  arch arm: "aarch64", intel: "42982997CC2F328D60B4F232E491C4EB1FBABF11C4BDF3927C134EB374109A47"

  version "0.8.13"
  sha256 arm:   "B8B6528A7D5AF44D08B301170D5905DDEC5D2ED9AFCB9B6E1A04DDB83B0422F7",
         intel: "42982997CC2F328D60B4F232E491C4EB1FBABF11C4BDF3927C134EB374109A47"

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
