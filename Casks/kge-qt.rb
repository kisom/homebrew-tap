cask "kge-qt" do
  version "1.5.9"
  sha256 "eb33c16195f04a45bc6ccc43b4e9d1b96262f3cd9afac62e2d77ed77c8d98992"

  url "https://github.com/kisom/kte/releases/download/v1.5.9/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
