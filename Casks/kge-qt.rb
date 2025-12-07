cask "kge-qt" do
  version "1.5.2"
  sha256 "c86894a49e8d18f63bfc203e0afb792049bf1907242ebaf45305a819dd4ce7c2"

  url "https://github.com/kisom/kte/releases/download/v1.5.2/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
