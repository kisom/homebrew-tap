cask "kge" do
  version "1.14.0"
  sha256 "238cbde75dafcdd640db081dc44b5629a4232369189e33092ec216c789ca3c35"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge.app.zip"
  name "kge"
  desc "Kyle's text editor"
  homepage "https://github.com/kisom/kte"

  depends_on :macos

  app "kge.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "-r", "com.apple.quarantine", "{{appdir}}/kge.app"],
        must_succeed: false
  end
end
