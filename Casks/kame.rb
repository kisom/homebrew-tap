cask "kame" do
  version "0.1.1"
  sha256 "e24e9bbfe636faf2191b6a0cf7e50e3031030e802ad8dd113d4204f980c42fff"

  url "https://github.com/kisom/kame/releases/download/v#{version}/kame.app.zip"
  name "kame"
  desc "Kyle's marginalia editor: a typeset prose editor"
  homepage "https://github.com/kisom/kame"

  depends_on arch: :arm64
  depends_on :macos

  app "kame.app"

  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kame.app"],
                   sudo: false
  end
end
