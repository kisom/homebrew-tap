cask "kge" do
  version "1.3.8"
  sha256 "85956b220c8644c48e85914edd682f1be0671ea38d2e38aa9ca7b0e85f93392b"

  url "https://github.com/kisom/kte/releases/download/v1.3.8/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
