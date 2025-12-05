cask "kge-qt" do
  version "1.4.1"
  sha256 "b8f089ad2654f6219a6473dfd8d8f8931e62e8f0044e2bfc6d7edbf832cfbbc7"

  url "https://github.com/kisom/kte/releases/download/v1.4.1/kge-qt.app.zip"
  desc "kyle's text editor (Qt build)"
  homepage "https://github.com/kisom/kte"

  app "kge-qt.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge-qt.app"],
                   sudo: false
  end
end
