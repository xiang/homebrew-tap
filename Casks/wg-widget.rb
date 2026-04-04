cask "wg-widget" do
  version "dev"
  sha256 "738f133415bddb1106bbc5f6bcff468b3600f242e7812486b45fa7e411fadacb"

  url "https://github.com/xiang/wg-widget/releases/download/v#{version}/wg-widget.dmg"
  name "wg-widget"
  desc "Vibe-coded Menu Bar wrapper for wg-quick"
  homepage "https://github.com/xiang/wg-widget"

  depends_on formula: "wireguard-tools"
  depends_on formula: "bash"

  app "wg-widget.app"

  zap trash: "~/.wireguard"
end
