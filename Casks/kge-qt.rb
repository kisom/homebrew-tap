cask "kge-qt" do
  version "1.5.8"
  sha256 "sha256:6d8b8a3096cb335478309eeb124ffdc23c27150c77b0628547241e9d993f9e85"

  url "https://github.com/kisom/kte/releases/download/v1.5.8/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
