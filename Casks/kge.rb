cask "kge" do
  version "1.14.0"
  sha256 "238cbde75dafcdd640db081dc44b5629a4232369189e33092ec216c789ca3c35"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge.app.zip"
  name "kge"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
