cask "kge" do
  version "1.3.7"
  sha256 "c6cde7c28a2e0a0b420a043d619bf8a70b72dc9e0fcd085ab46a7c82d9a3a730""

  url "https://github.com/kisom/kte/releases/download/v1.3.7/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
