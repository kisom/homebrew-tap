cask "kame" do
  version "0.2.0"
  sha256 "69d2eeff1b56a2e34df42e89078efd1933278c6c9357d341b04abc1f4ac75af3"

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
