cask "kge" do
  version "1.6.0"
  sha256 "4e2d378f808cc6e2be2cf64c8a59211e91b7d4cc2dbf3e6037c680d43c1ad705"

  url "https://github.com/kisom/kte/releases/download/v1.6.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
