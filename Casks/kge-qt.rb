cask "kge-qt" do
  version "1.5.9"
  sha256 "eb33c16195f04a45bc6ccc43b4e9d1b96262f3cd9afac62e2d77ed77c8d98992"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge-qt.app.zip"
  name "kge-qt"
  desc "Kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  depends_on :macos

  app "kge-qt.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "-r", "com.apple.quarantine", "{{appdir}}/kge-qt.app"],
        must_succeed: false
  end
end
