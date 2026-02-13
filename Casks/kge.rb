cask "kge" do
  version "1.6.2"
  sha256 "7d0fb6a07d72076ab9f7b80318521ab124ed6b151ac33b7b893774b10a17ed57"

  url "https://github.com/kisom/kte/releases/download/v1.6.2/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
