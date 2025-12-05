cask "kge-qt" do
  version "1.4.0"
  sha256 "a2a7634ab5832d103dc79cb453bdc1ad63cde754e12bc8e58efc01aa5f6846b3"

  url "https://github.com/kisom/kte/releases/download/v1.4.0/kge-qt.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
