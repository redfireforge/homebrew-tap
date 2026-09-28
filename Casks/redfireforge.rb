cask "redfireforge" do
  arch arm: "aarch64", intel: "0705A3ACF5B58172B81067718083D95205D08945245981D9B74EF6B68C45B481"

  version "0.8.15"
  sha256 arm:   "0CD2C060E58957C59057E8973F6549FB056E4FA19B824F760FBF34DDCE8C8389",
         intel: "0705A3ACF5B58172B81067718083D95205D08945245981D9B74EF6B68C45B481"

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
