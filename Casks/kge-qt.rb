cask "kge-qt" do
  version "1.4.0"
  sha256 "ba1adcd2cee914e1123d8c684fb61dc09bf934ab740ac4d7359c1c8da4bdf94e"

  url "https://github.com/kisom/kte/releases/download/v1.4.0/kge-qt.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
