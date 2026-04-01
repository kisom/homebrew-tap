cask "kge" do
  version "1.11.1"
  sha256 "0e0a5c47f42f178ce96e4ea71c0a5148d585b6400fdfe893ce73df2cc61e74be"

  url "https://github.com/kisom/kte/releases/download/v1.11.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
