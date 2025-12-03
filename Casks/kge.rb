cask "kge" do
  version "1.2.4"
  sha256 "d1bea4514611122b5a87e9d780514f6cb0324acac0945aa1005f81cc2f96f444"

  url "https://github.com/kisom/kte/releases/download/v1.2.4/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
