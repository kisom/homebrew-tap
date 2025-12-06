cask "kge" do
  version "1.5.1"
  sha256 "a883ea8114ac1da9990e6ed6de02b12e4bbcd1b9e7e44b330ebbc930a007e266"

  url "https://github.com/kisom/kte/releases/download/v1.5.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
