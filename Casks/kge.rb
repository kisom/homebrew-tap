cask "kge" do
  version "1.5.6"
  sha256 "d6d757864f23a198541e4257d5f5a335a48096e82fd66ab3c0129e6cf86e474e"

  url "https://github.com/kisom/kte/releases/download/v1.5.6/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
