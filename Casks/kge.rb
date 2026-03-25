cask "kge" do
  version "1.9.0"
  sha256 "d26ae66c5975377424de5aebdc88b56f8132255eb89ae2ec290f5ec09687de20"

  url "https://github.com/kisom/kte/releases/download/v1.9.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
