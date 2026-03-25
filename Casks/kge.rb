cask "kge" do
  version "1.9.1"
  sha256 "d6e6272348784d7c0c285e4c333efd4c5d37d6ddcc915ae7bf7ea732b43c5267"

  url "https://github.com/kisom/kte/releases/download/v1.9.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
