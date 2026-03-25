cask "kge" do
  version "1.10.1"
  sha256 "02102a886224fea39f406c45b815e54c419867a4dd1a8bd6afcc238e34a9074b"

  url "https://github.com/kisom/kte/releases/download/v1.10.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
