cask "kge-qt" do
  version "1.5.3"
  sha256 "8aca434ef9e0fbaa8f89e841ffa41d161d7e4f3a44e68d4103e9078b34ec5dcb"

  url "https://github.com/kisom/kte/releases/download/v1.5.3/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
