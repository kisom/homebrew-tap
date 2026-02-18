cask "kge" do
  version "1.6.6"
  sha256 "5ef407603dba61c22ec1652681f81cca055348df6f4e489c54091051a76fbe19"

  url "https://github.com/kisom/kte/releases/download/v1.6.6/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
