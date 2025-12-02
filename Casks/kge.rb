cask "kge" do
  version "1.2.3"
  sha256 "512ae2b426e9972581451464758bd9c65a00489ac34402c2fb7e1620bfc40290"

  url "https://github.com/kisom/kte/releases/download/v1.2.3/kge.app.zip"
  desc "kyle's text editor"
  homepage "https://github.com/kisom/kte"

  app "kge.app"
  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/kge.app"],
                   sudo: false
  end
end
