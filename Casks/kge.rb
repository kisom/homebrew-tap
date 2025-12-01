cask "kge" do
  version "1.0.5"
  sha256 "61ac3bb66fd886b1c590442507019c448ccab74d6f4b793b89088ea0c717374b"

  url "https://github.com/kisom/kte/releases/download/v1.0.5/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
