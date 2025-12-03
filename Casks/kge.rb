cask "kge" do
  version "1.3.5"
  sha256 "a126d3a56d67d752785a0358101fe07f2459d4ac58fe743ef283590b8b6ab2e4"

  url "https://github.com/kisom/kte/releases/download/v1.3.5/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
