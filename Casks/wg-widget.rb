cask "wg-widget" do
  version "dev"
  sha256 :no_check # This allows the DMG to be overwritten without Homebrew errors

  url "https://github.com/xiang/wg-widget/releases/download/v#{version}/wg-widget.dmg"
  name "wg-widget"
  desc "Simple macOS Menu Bar wrapper for wg-quick"
  homepage "https://github.com/xiang/wg-widget"

  depends_on formula: "wireguard-tools"
  depends_on formula: "bash"

  app "wg-widget.app"
end
