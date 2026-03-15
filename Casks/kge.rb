cask "kge" do
  version "1.8.0"
  sha256 "16381996c6c797f5b7d72e00075342a582fe8e2969b07d80da398d5d51eda49c"

  url "https://github.com/kisom/kte/releases/download/v1.8.0/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
