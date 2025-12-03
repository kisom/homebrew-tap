cask "kge" do
  version "1.3.0"
  sha256 "cd4d5d96a8a0717d24fe82b83bc5379bdc1e9d57c5c064870b17c69fbae605fc"

  url "https://github.com/kisom/kte/releases/download/v1.3.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
