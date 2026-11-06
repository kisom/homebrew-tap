cask "kame" do
  version "0.1.2"
  sha256 "49d595ba8af15246fb6d459c12a869186fcdf395789f1b9dd7a72c55301fd2cd"

  url "https://github.com/kisom/kame/releases/download/v#{version}/kame.app.zip"
  name "kame"
  desc "Kyle's marginalia editor: a typeset prose editor"
  homepage "https://github.com/kisom/kame"

  depends_on arch: :arm64
  depends_on :macos

  app "kame.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "-r", "com.apple.quarantine", "{{appdir}}/kame.app"],
        must_succeed: false
  end
end
