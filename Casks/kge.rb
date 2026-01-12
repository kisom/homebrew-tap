cask "kge" do
  version "1.5.8"
  sha256 "0776a6aff49caab4e19fcc788ada035513702c0c99bf5076ae378720cf7c8233"

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
