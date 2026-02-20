cask "kge" do
  version "1.7.0"
  sha256 "50411e1317e1bc6367ad93729fe348ef5a68f312ceead9c35198409804296e8d"

  url "https://github.com/kisom/kte/releases/download/v1.7.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
