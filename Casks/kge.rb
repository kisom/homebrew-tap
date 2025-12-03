cask "kge" do
  version "1.3.1"
  sha256 "2dc64fbb6c175c48387e26f87be326ede941b6b100a998db5e99f1491ed37de2"

  url "https://github.com/kisom/kte/releases/download/v1.3.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
