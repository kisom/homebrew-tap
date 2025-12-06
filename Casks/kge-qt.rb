cask "kge-qt" do
  version "1.5.0"
  sha256 "df1d2bd1711a3be08ff168444c90a26cee8e72d390e937bb6d222d615e18fe5b"

  url "https://github.com/kisom/kte/releases/download/v1.5.0/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
