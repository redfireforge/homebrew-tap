cask "redfireforge" do
  arch arm: "aarch64", intel: "B7A93B2ABECB4E3467FB01705585CBA97FBA3DB69C8DE48F74BA88536F1A2B4C"

  version "0.8.5"
  sha256 arm:   "3817538A834919CFAA517CCC4117F4A718F7083A1EC3F65F627526F3B2FFD973",
         intel: "B7A93B2ABECB4E3467FB01705585CBA97FBA3DB69C8DE48F74BA88536F1A2B4C"

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
