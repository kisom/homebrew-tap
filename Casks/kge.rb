cask "kge" do
  version "1.10.0"
  sha256 "b6e6850640adb6dffd4d3400a65866c4bf2616bd5b2bf0a0ea5a415d49b5b7d5"

  url "https://github.com/kisom/kte/releases/download/v1.10.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
