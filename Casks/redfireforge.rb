cask "redfireforge" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "b732bf5b35b04d9a14dbd2eaa8405030ddd1db96a19384d30998c3400b00db82",
         intel: "a93108c7bc7763f2229f8f989594cde5dfc7479ee3b252b7a33a6564352f0704"

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
