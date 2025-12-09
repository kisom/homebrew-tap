cask "kge" do
  version "1.5.3"
  sha256 "20b267c99ae9b557d558d5c7bd054eaaad92dbc04aff10421f863928940f3fa0"

  url "https://github.com/kisom/kte/releases/download/v1.5.3/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
