cask "kge" do
  version "1.6.3"
  sha256 "36bfdb2cd03f19b695025f0a98e9ecd73c07efba80bd4da3ef06af18ada0e046"

  url "https://github.com/kisom/kte/releases/download/v1.6.3/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
