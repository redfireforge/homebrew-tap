cask "redfireforge" do
  arch arm: "aarch64", intel: "826F784A5959F1E4DC3AAE92DAED98E2028ED7F4BFDE9D05A50121D4C179731E"

  version "0.8.3"
  sha256 arm:   "0C58AAB2F952238992016B2547D397057689E5CBE7182D999FBA2630D0C57118",
         intel: "826F784A5959F1E4DC3AAE92DAED98E2028ED7F4BFDE9D05A50121D4C179731E"

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
