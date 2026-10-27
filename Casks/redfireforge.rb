cask "redfireforge" do
  arch arm: "aarch64", intel: "7DB7BFE6B855BBD51E241A654B201B1F6C5AF8C1C20F58D3D38F236AE3481DF1"

  version "0.8.19"
  sha256 arm:   "F9CE278CC24D2192EC70639623B022320032237213A694660ED480321E4B743F",
         intel: "7DB7BFE6B855BBD51E241A654B201B1F6C5AF8C1C20F58D3D38F236AE3481DF1"

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
