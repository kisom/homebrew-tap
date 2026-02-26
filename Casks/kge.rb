cask "kge" do
  version "1.7.1"
  sha256 "792a05c9112d57135393dcd3bbca0f6b1fd282337696ef7f4ae7688e6bb93904"

  url "https://github.com/kisom/kte/releases/download/v1.7.1/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
