cask "kge" do
  version "1.1.0"
  sha256 "43e49450146e69c8cd404ecc0521007d2efa136dc30635ca9fe63c1be06f1e46"

  url "https://github.com/kisom/kte/releases/download/v1.1.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
