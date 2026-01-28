cask "kge" do
  version "1.5.9"
  sha256 "ff308336fda4d234e093ea1bbf9f91cd7c1c56b5f7318c0a17d3e3ab6c273fa7"

  url "https://github.com/kisom/kte/releases/download/v1.5.9/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
