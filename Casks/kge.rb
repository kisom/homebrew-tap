cask "kge" do
  version "1.3.7"
  sha256 "7a909455628987b119151c5cb198f36f68c20f245c169af3f2d00b5093b5252f"

  url "https://github.com/kisom/kte/releases/download/v1.3.7/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
