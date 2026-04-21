cask "kge" do
  version "1.11.2"
  sha256 "43eebd29499beb1019719699dca9418c4134252523e836b3a7b38170f50bc0dd"

  url "https://github.com/kisom/kte/releases/download/v1.11.2/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
