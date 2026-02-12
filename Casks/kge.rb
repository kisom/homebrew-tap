cask "kge" do
  version "1.6.1"
  sha256 "b673d0a242c1458fc95f9a21007263bea64b2d86420ee70f55f49aa090d6f9ed"

  url "https://github.com/kisom/kte/releases/download/v1.6.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
