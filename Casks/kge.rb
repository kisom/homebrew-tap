cask "kge" do
  version "1.6.5"
  sha256 "73b8572c2aee103449371e5df37ea6b89a0b770a10cd73b2448261e14cd6735a"

  url "https://github.com/kisom/kte/releases/download/v1.6.5/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
