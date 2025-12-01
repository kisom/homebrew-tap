cask "kge" do
  version "1.1.1"
  sha256 "1534d8d4fed73bed94a3c4cbde0908a105af47c0f2087286eef910277a657dbd"

  url "https://github.com/kisom/kte/releases/download/v1.1.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
