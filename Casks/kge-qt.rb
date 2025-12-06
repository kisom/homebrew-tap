cask "kge-qt" do
  version "1.5.1"
  sha256 "03c3008c377dbd43d2a833ad30b54c5490e50bb34633c0f20798c12caa8e19e6"

  url "https://github.com/kisom/kte/releases/download/v1.5.1/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
