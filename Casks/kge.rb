cask "kge" do
  version "1.5.2"
  sha256 "c35d3250f210a44c025e7cff4bd6cc87c799d1675de52458153647124c0490ef"

  url "https://github.com/kisom/kte/releases/download/v1.5.2/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
