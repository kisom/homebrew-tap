cask "kge" do
  version "1.13.0"
  sha256 "4698c54f597bdea97f993506f2775ae21c978ce8fa9d34dd7ad92d32a9611e73"

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
