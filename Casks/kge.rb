cask "kge" do
  version "1.3.4"
  sha256 "7a65a1ea8e9c9d3ae26862d2a5a6de255e9ed3cfbaad53e2f0350388fe118a14""

  url "https://github.com/kisom/kte/releases/download/v1.3.4/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
