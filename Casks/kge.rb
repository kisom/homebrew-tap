cask "kge" do
  version "1.2.0"
  sha256 "76127724f25d0f450056a58d2e59e8b12c9c5e21d2cbdf9ceba2f10fc7f8f790"

  url "https://github.com/kisom/kte/releases/download/v1.2.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
