cask "redfireforge" do
  arch arm: "aarch64", intel: "02D5C44A7E1BC6CB07A7D2CEF09CD0D7072A765953905F3187683D7056160B45"

  version "0.8.14"
  sha256 arm:   "CD7A91EC1B9CFB58CB7ED274F97B9E0BFA8EEE351C4E3FBD09E7624C9FA7D07C",
         intel: "02D5C44A7E1BC6CB07A7D2CEF09CD0D7072A765953905F3187683D7056160B45"

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
