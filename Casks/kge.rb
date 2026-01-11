cask "kge" do
  version "1.5.8"
  sha256 "6d1014e739895a6d92bb4e9d00caeac5102e8061b3e89e6cdb90550c43097e38"

  url "https://github.com/kisom/kte/releases/download/v1.5.8/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
