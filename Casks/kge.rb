cask "kge" do
  version "1.12.0"
  sha256 "7bc1e6b1acb3945f3689aa2f08e0319454c5027225abaacd23106f0384cc259d"

  url "https://github.com/kisom/kte/releases/download/v#{version}/kge.app.zip"
  name "kge"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
