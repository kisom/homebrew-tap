cask "kge" do
  version "1.6.4"
  sha256 "af57d9f3e5df0412345728a39180b0dd508b68c61eb5be0766bf3aa1b3664d94"

  url "https://github.com/kisom/kte/releases/download/v1.6.4/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
