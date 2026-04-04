cask "wg-widget" do
  version "0.0.0-dev+6525ff9" # This will be overwritten by release.sh
  sha256 :no_check

  url "https://github.com/xiang/wg-widget/releases/download/dev/wg-widget.dmg"
  name "wg-widget"
  desc "Simple macOS Menu Bar wrapper for wg-quick"
  homepage "https://github.com/xiang/wg-widget"

  depends_on formula: "wireguard-tools"
  depends_on formula: "bash"

  app "wg-widget.app"
end
