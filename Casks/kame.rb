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

  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kame.app"],
                   sudo: false
  end
end
