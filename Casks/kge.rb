cask "kge" do
  version "1.2.2"
  sha256 "eb0f667e234b51159234cbcc528ed93bda4f9af8dd3c287255d3fbadf396091c"

  url "https://github.com/kisom/kte/releases/download/v1.2.2/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
