cask "redfireforge" do
  arch arm: "aarch64", intel: "D49B18E031859CB930273304FD7FFD84093CF3E0EFE56A04004F37880EB321A1"

  version "0.8.10"
  sha256 arm:   "43946E21E5B152EC06962E6DEFE2D4882E6CD982103E514801CD5A6DF6A7C5BA",
         intel: "D49B18E031859CB930273304FD7FFD84093CF3E0EFE56A04004F37880EB321A1"

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
