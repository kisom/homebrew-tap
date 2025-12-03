cask "kge" do
  version "1.3.2"
  sha256 "5c357eacd4e9fb66f8b9bc9dc09c3346fff6a4f647291ed4b4e689b6750c88c4"

  url "https://github.com/kisom/kte/releases/download/v1.3.2/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
