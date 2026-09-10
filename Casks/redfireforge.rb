cask "redfireforge" do
  arch arm: "aarch64", intel: "18F70ED65571CDCDE6B9B5B91B2534BBBE128785A5AB0C06F0F3DBF3C741DEAA"

  version "0.8.7"
  sha256 arm:   "1FA91361C6C2390A0458601FAC9A09F24C04E5C6BC784009F79CF706A338D3F9",
         intel: "18F70ED65571CDCDE6B9B5B91B2534BBBE128785A5AB0C06F0F3DBF3C741DEAA"

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
